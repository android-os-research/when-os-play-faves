.class public Lcom/android/server/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accounts/AccountManagerService$NotificationId;,
        Lcom/android/server/accounts/AccountManagerService$Injector;,
        Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;,
        Lcom/android/server/accounts/AccountManagerService$MessageHandler;,
        Lcom/android/server/accounts/AccountManagerService$Session;,
        Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Lcom/android/server/accounts/AccountManagerService$StartAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;,
        Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;,
        Lcom/android/server/accounts/AccountManagerService$UserAccounts;,
        Lcom/android/server/accounts/AccountManagerService$Lifecycle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field public static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

.field public static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

.field public static final MESSAGE_COPY_SHARED_ACCOUNT:I = 0x4

.field public static final MESSAGE_TIMED_OUT:I = 0x3

.field public static final PRE_N_DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field public static final SIGNATURE_CHECK_MATCH:I = 0x1

.field public static final SIGNATURE_CHECK_MISMATCH:I = 0x0

.field public static final SIGNATURE_CHECK_UID_MATCH:I = 0x2

.field public static final TAG:Ljava/lang/String; = "AccountManagerService"

.field public static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

.field public final mContext:Landroid/content/Context;

.field public final mDateFormat:Ljava/text/SimpleDateFormat;

.field public final mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

.field public final mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

.field public final mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field public mUserManager:Landroid/os/UserManager;

.field public final mUsers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$KBdCaqKBViP4NHSEblA5m0V8mDc(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->lambda$removeAccountInternal$2(Landroid/accounts/Account;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Zd5rIkdqSc73-5BH_ZwCn3r8Tjk(Lcom/android/server/accounts/AccountManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$n0YCbAlSPVconhNIXq74l3EbBiM(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->lambda$revokeAppPermission$4(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tXc_lOb0S8tIHMjxxJbxGDQTKhQ(Lcom/android/server/accounts/AccountManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->lambda$onUnlockUser$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wwYzDkZteaaqYKajDk6nNX5cs_Q(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->lambda$grantAppPermission$3(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/accounts/AccountManagerService;)Landroid/app/AppOpsManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAppPermissionChangeListeners(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAuthenticatorCache(Lcom/android/server/accounts/AccountManagerService;)Lcom/android/server/accounts/IAccountAuthenticatorCache;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDateFormat(Lcom/android/server/accounts/AccountManagerService;)Ljava/text/SimpleDateFormat;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManager(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessions(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsers(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelAccountAccessRequestNotificationIfNeeded(Lcom/android/server/accounts/AccountManagerService;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelAccountAccessRequestNotificationIfNeeded(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;IZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcompleteCloningAccount(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoNotification(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetCredentialPermissionNotificationId(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleGetAccountsResult(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhasAccountAccess(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misAccountPresentForCaller(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misLocalUnlockedUser(Lcom/android/server/accounts/AccountManagerService;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogAddAccountMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->logAddAccountMetrics(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogGetAuthTokenMetrics(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnewGrantCredentialsPermissionIntent(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnewRequestAccountAccessIntent(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mpurgeOldGrantsAll(Lcom/android/server/accounts/AccountManagerService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrantsAll()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpurgeUserData(Lcom/android/server/accounts/AccountManagerService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->purgeUserData(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAccountInternal(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveVisibilityValuesForPackage(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->removeVisibilityValuesForPackage(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresolveAccountVisibility(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msaveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msaveCachedToken(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .registers 9

    invoke-virtual/range {p0 .. p8}, Lcom/android/server/accounts/AccountManagerService;->saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendErrorResponse(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendResponse(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateLastAuthenticatedTime(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 235
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x5000000

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 300
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/accounts/Account;

    .line 301
    sput-object v0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
    .registers 13

    .line 313
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 240
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 293
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    .line 294
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    .line 296
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 297
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 314
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    .line 315
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 316
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 317
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/app/AppOpsManager;

    iput-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 318
    new-instance v9, Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getMessageHandlerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v9, p0, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v9, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    .line 319
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getAccountAuthenticatorCache()Lcom/android/server/accounts/IAccountAuthenticatorCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    .line 320
    invoke-interface {v1, p0, v9}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 322
    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 324
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 325
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    .line 326
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 327
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/accounts/AccountManagerService$1;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 356
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;

    const/4 v10, 0x0

    invoke-direct {v1, p0, v10}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl-IA;)V

    invoke-virtual {p1, v1}, Lcom/android/server/accounts/AccountManagerService$Injector;->addLocalService(Landroid/accounts/AccountManagerInternal;)V

    .line 358
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.USER_REMOVED"

    .line 359
    invoke-virtual {v4, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/accounts/AccountManagerService$2;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 374
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$3;

    invoke-direct {p1, p0}, Lcom/android/server/accounts/AccountManagerService$3;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    .line 386
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 389
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$4;

    invoke-direct {p1, p0}, Lcom/android/server/accounts/AccountManagerService$4;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    const/16 v0, 0x3e

    invoke-virtual {v8, v0, v10, p1}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 413
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V

    return-void
.end method

.method public static checkManageOrCreateUsersPermission(Ljava/lang/String;)V
    .registers 5

    .line 6036
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 6035
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-eqz v0, :cond_32

    .line 6038
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.CREATE_USERS"

    .line 6037
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_32

    .line 6039
    :cond_1b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS or CREATE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_32
    :goto_32
    return-void
.end method

.method public static checkManageUsersPermission(Ljava/lang/String;)V
    .registers 5

    .line 6028
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.MANAGE_USERS"

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 6027
    invoke-static {v1, v0, v2, v3}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v0

    if-nez v0, :cond_f

    return-void

    .line 6030
    :cond_f
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You need MANAGE_USERS permission to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static deleteDbFileWarnIfFailed(Ljava/io/File;)V
    .registers 3

    .line 6789
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 6790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Database at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " was not deleted successfully"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AccountManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    return-void
.end method

.method public static getAuthenticatorTypeAndUIDForUser(Landroid/content/Context;I)Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1354
    new-instance v0, Lcom/android/server/accounts/AccountAuthenticatorCache;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    .line 1355
    invoke-static {v0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/IAccountAuthenticatorCache;",
            "I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1361
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1363
    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p0

    .line 1362
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1364
    iget-object v1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget p1, p1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_29
    return-object v0
.end method

.method public static getSingleton()Lcom/android/server/accounts/AccountManagerService;
    .registers 1

    .line 310
    sget-object v0, Lcom/android/server/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService;

    return-object v0
.end method

.method public static synthetic lambda$grantAppPermission$3(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .registers 3

    .line 6204
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    return-void
.end method

.method private synthetic lambda$new$0(I)V
    .registers 16

    .line 416
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 419
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 421
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 422
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 424
    :try_start_13
    array-length v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    move-object v8, v6

    :goto_18
    if-ge v7, v4, :cond_49

    aget-object v9, v0, v7

    .line 427
    iget-object v10, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v10, v11, v9}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_27

    goto :goto_46

    :cond_27
    if-nez v8, :cond_39

    const-string v8, "android"

    .line 434
    invoke-virtual {p0, v6, v1, v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 435
    invoke-static {v8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v10
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_4d

    if-eqz v10, :cond_39

    .line 446
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 440
    :cond_39
    :try_start_39
    array-length v10, v8

    move v11, v5

    :goto_3b
    if-ge v11, v10, :cond_46

    aget-object v12, v8, v11

    const/4 v13, 0x1

    .line 441
    invoke-virtual {p0, v12, p1, v9, v13}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_4d

    add-int/lit8 v11, v11, 0x1

    goto :goto_3b

    :cond_46
    :goto_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 446
    :cond_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_52

    :catchall_4d
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 447
    throw p0

    :cond_52
    :goto_52
    return-void
.end method

.method private synthetic lambda$onUnlockUser$1(I)V
    .registers 2

    .line 1531
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->syncSharedAccounts(I)V

    return-void
.end method

.method private synthetic lambda$removeAccountInternal$2(Landroid/accounts/Account;I)V
    .registers 4

    const/4 v0, 0x0

    .line 2598
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    return-void
.end method

.method public static synthetic lambda$revokeAppPermission$4(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V
    .registers 3

    .line 6245
    invoke-interface {p0, p1, p2}, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;->onAppPermissionChanged(Landroid/accounts/Account;I)V

    return-void
.end method

.method public static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_14

    .line 5617
    array-length v1, p0

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_14

    aget-object v3, p0, v2

    .line 5618
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 p0, 0x1

    return p0

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_14
    return v0
.end method


# virtual methods
.method public accountAuthenticated(Landroid/accounts/Account;)Z
    .registers 9

    .line 1818
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 1819
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_22

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v5

    .line 1823
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const-string v6, "accountAuthenticated( account: %s, callerUid: %s)"

    .line 1820
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1824
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string v1, "account cannot be null"

    .line 1826
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1827
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1828
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 1836
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v2

    if-eqz v2, :cond_56

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1837
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_56

    .line 1841
    :cond_42
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 1843
    :try_start_46
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1844
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->updateLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p0
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_51

    .line 1846
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_51
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1847
    throw p0

    :cond_56
    :goto_56
    return v5

    :cond_57
    new-array p0, v2, [Ljava/lang/Object;

    .line 1831
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v5

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, v4

    const-string/jumbo p1, "uid %s cannot notify authentication for accounts of type: %s"

    .line 1829
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1833
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z
    .registers 8

    .line 2972
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p0

    .line 2973
    :try_start_3
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 2974
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/accounts/Account;

    array-length v0, p1

    move v2, v1

    :goto_1a
    if-ge v2, v0, :cond_2e

    aget-object v3, p1, v2

    .line 2975
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 2976
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 2980
    :cond_2e
    monitor-exit p0

    return v1

    :catchall_30
    move-exception p1

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw p1
.end method

.method public final accountTypeManagesContacts(Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 5922
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5925
    :try_start_8
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v3, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_3f

    .line 5927
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5931
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5932
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v3, Landroid/accounts/AuthenticatorDescription;

    iget-object v3, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 5933
    iget-object p1, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    iget-object p1, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const-string v0, "android.permission.WRITE_CONTACTS"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_3e
    return v0

    :catchall_3f
    move-exception p0

    .line 5927
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5928
    throw p0
.end method

.method public addAccount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 16

    const/4 v0, 0x1

    .line 3488
    invoke-static {p6, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    .line 3489
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 3490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAccount: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", authTokenType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", requiredFeatures "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3493
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expectActivityLaunch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3496
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3490
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    if-eqz p1, :cond_9e

    if-eqz p2, :cond_96

    .line 3502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3503
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 3504
    invoke-virtual {p0, v8, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v1

    if-nez v1, :cond_7a

    const/16 p2, 0x64

    :try_start_71
    const-string p3, "User is not allowed to add an account!"

    .line 3506
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_76
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_76} :catch_76

    .line 3510
    :catch_76
    invoke-virtual {p0, p2, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3513
    :cond_7a
    invoke-virtual {p0, v8, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_8b

    const/16 p2, 0x65

    :try_start_82
    const-string p3, "User cannot modify accounts of this type (policy)."

    .line 3515
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_87
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_87} :catch_87

    .line 3519
    :catch_87
    invoke-virtual {p0, p2, v8}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    :cond_8b
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    .line 3523
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/AccountManagerService;->addAccountAndLogMetrics(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    return-void

    .line 3499
    :cond_96
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3498
    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "response is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addAccountAndLogMetrics(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 26

    move-object/from16 v0, p0

    .line 3582
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3583
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-nez p6, :cond_13

    .line 3584
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v13, v3

    goto :goto_15

    :cond_13
    move-object/from16 v13, p6

    :goto_15
    const-string v3, "callerUid"

    .line 3585
    invoke-virtual {v13, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "callerPid"

    .line 3586
    invoke-virtual {v13, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3588
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v15

    move/from16 v1, p7

    .line 3590
    :try_start_25
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3591
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_ADD:Ljava/lang/String;

    const-string v4, "accounts"

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3594
    new-instance v17, Lcom/android/server/accounts/AccountManagerService$9;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v14, p2

    invoke-direct/range {v1 .. v14}, Lcom/android/server/accounts/AccountManagerService$9;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 3620
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_4c
    .catchall {:try_start_25 .. :try_end_4c} :catchall_50

    .line 3622
    invoke-static/range {v15 .. v16}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_50
    move-exception v0

    invoke-static/range {v15 .. v16}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3623
    throw v0
.end method

.method public addAccountAsUser(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V
    .registers 14

    const/4 v0, 0x1

    .line 3531
    invoke-static {p6, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3532
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    .line 3533
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 3534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addAccount: accountType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", authTokenType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", requiredFeatures "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3537
    invoke-static {p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", expectActivityLaunch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3539
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3540
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", for user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3534
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    const/4 v2, 0x0

    if-eqz p1, :cond_6e

    move v4, v0

    goto :goto_6f

    :cond_6e
    move v4, v2

    :goto_6f
    const-string/jumbo v5, "response cannot be null"

    .line 3543
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_79

    move v4, v0

    goto :goto_7a

    :cond_79
    move v4, v2

    :goto_7a
    const-string v5, "accountType cannot be null"

    .line 3544
    invoke-static {v4, v5}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3546
    invoke-virtual {p0, v1, p7}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v4

    if-nez v4, :cond_ab

    .line 3555
    invoke-virtual {p0, p7, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v0

    if-nez v0, :cond_96

    const/16 p2, 0x64

    :try_start_8d
    const-string p3, "User is not allowed to add an account!"

    .line 3557
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_92} :catch_92

    .line 3561
    :catch_92
    invoke-virtual {p0, p2, p7}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3564
    :cond_96
    invoke-virtual {p0, p7, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_a7

    const/16 p2, 0x65

    :try_start_9e
    const-string p3, "User cannot modify accounts of this type (policy)."

    .line 3566
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a3} :catch_a3

    .line 3570
    :catch_a3
    invoke-virtual {p0, p2, p7}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3574
    :cond_a7
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/accounts/AccountManagerService;->addAccountAndLogMetrics(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;I)V

    return-void

    .line 3547
    :cond_ab
    new-instance p0, Ljava/lang/SecurityException;

    new-array p1, v3, [Ljava/lang/Object;

    .line 3550
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    .line 3551
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "User %s trying to add account for %s"

    .line 3548
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .registers 11

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 1749
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public addAccountExplicitlyWithVisibility(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;Ljava/lang/String;)Z
    .registers 17

    move-object v0, p0

    move-object v3, p1

    const/4 v1, 0x1

    move-object v5, p3

    .line 501
    invoke-static {p3, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 503
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const-string v4, "AccountManagerService"

    const/4 v7, 0x2

    .line 504
    invoke-static {v4, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_40

    .line 505
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addAccountExplicitly: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", caller\'s uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 505
    invoke-static {v4, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_40
    const-string v4, "account cannot be null"

    .line 508
    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 509
    iget-object v4, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4, v6, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_88

    :try_start_4d
    const-string v4, "device_account_policy"

    .line 519
    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v4

    if-eqz v4, :cond_6c

    .line 520
    iget-object v7, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v8, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v4, v7, v8, v1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_64

    goto :goto_6c

    .line 521
    :cond_64
    new-instance v1, Ljava/lang/SecurityException;

    const-string v4, "Security policy blocks this account addition"

    invoke-direct {v1, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6c
    .catch Landroid/os/RemoteException; {:try_start_4d .. :try_end_6c} :catch_6c

    .line 535
    :catch_6c
    :cond_6c
    :goto_6c
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v9

    .line 537
    :try_start_70
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object/from16 v8, p5

    .line 538
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/AccountManagerService;->addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;Ljava/lang/String;)Z

    move-result v0
    :try_end_7f
    .catchall {:try_start_70 .. :try_end_7f} :catchall_83

    .line 541
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return v0

    :catchall_83
    move-exception v0

    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 542
    throw v0

    :cond_88
    new-array v0, v7, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 511
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v2

    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string/jumbo v1, "uid %s cannot explicitly add accounts of type: %s"

    .line 510
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 512
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final addAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ILjava/util/Map;Ljava/lang/String;)Z
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v1, p4

    move-object/from16 v10, p6

    const/4 v11, 0x1

    .line 1918
    invoke-static {v1, v11}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const/4 v2, 0x0

    if-nez v9, :cond_12

    return v2

    .line 1922
    :cond_12
    iget-object v3, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/16 v4, 0xc8

    if-eqz v3, :cond_26

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_26

    const-string v0, "AccountManagerService"

    const-string v1, "Account cannot be added - Name longer than 200 chars"

    .line 1923
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1926
    :cond_26
    iget-object v3, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    if-eqz v3, :cond_38

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v4, :cond_38

    const-string v0, "AccountManagerService"

    const-string v1, "Account cannot be added - Name longer than 200 chars"

    .line 1927
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1930
    :cond_38
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v3

    if-nez v3, :cond_73

    const-string v0, "AccountManagerService"

    .line 1931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Account "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be added - user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is locked. callingUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p5

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_73
    move/from16 v7, p5

    .line 1935
    iget-object v12, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1936
    :try_start_78
    iget-object v13, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_23c

    .line 1937
    :try_start_7b
    iget-object v3, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_239

    .line 1939
    :try_start_80
    iget-object v3, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, v9}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_b4

    const-string v0, "AccountManagerService"

    .line 1940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertAccountIntoDatabase: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping since the account already exists"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ac
    .catchall {:try_start_80 .. :try_end_ac} :catchall_232

    .line 1990
    :try_start_ac
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v13
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_239

    :try_start_b2
    monitor-exit v12
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_23c

    return v2

    .line 1944
    :cond_b4
    :try_start_b4
    iget-object v3, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->findAllDeAccounts()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/16 v4, 0x64

    if-le v3, v4, :cond_ea

    const-string v0, "AccountManagerService"

    .line 1945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertAccountIntoDatabase: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping since more than 100 accounts on device exist"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catchall {:try_start_b4 .. :try_end_e2} :catchall_232

    .line 1990
    :try_start_e2
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v13
    :try_end_e8
    .catchall {:try_start_e2 .. :try_end_e8} :catchall_239

    :try_start_e8
    monitor-exit v12
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_23c

    return v2

    .line 1949
    :cond_ea
    :try_start_ea
    iget-object v3, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    move-object/from16 v4, p3

    invoke-virtual {v3, v9, v4}, Lcom/android/server/accounts/AccountsDb;->insertCeAccount(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v14

    cmp-long v3, v14, v5

    if-gez v3, :cond_11e

    const-string v0, "AccountManagerService"

    .line 1951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertAccountIntoDatabase: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping the DB insert failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_116
    .catchall {:try_start_ea .. :try_end_116} :catchall_232

    .line 1990
    :try_start_116
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v13
    :try_end_11c
    .catchall {:try_start_116 .. :try_end_11c} :catchall_239

    :try_start_11c
    monitor-exit v12
    :try_end_11d
    .catchall {:try_start_11c .. :try_end_11d} :catchall_23c

    return v2

    .line 1956
    :cond_11e
    :try_start_11e
    iget-object v3, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, v9, v14, v15}, Lcom/android/server/accounts/AccountsDb;->insertDeAccount(Landroid/accounts/Account;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-gez v3, :cond_150

    const-string v0, "AccountManagerService"

    .line 1957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertAccountIntoDatabase: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", skipping the DB insert failed"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catchall {:try_start_11e .. :try_end_148} :catchall_232

    .line 1990
    :try_start_148
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v13
    :try_end_14e
    .catchall {:try_start_148 .. :try_end_14e} :catchall_239

    :try_start_14e
    monitor-exit v12
    :try_end_14f
    .catchall {:try_start_14e .. :try_end_14f} :catchall_23c

    return v2

    :cond_150
    if-eqz v1, :cond_1a6

    .line 1962
    :try_start_152
    invoke-virtual/range {p4 .. p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1963
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1964
    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v14, v15, v4, v11}, Lcom/android/server/accounts/AccountsDb;->insertExtra(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    cmp-long v2, v16, v5

    if-gez v2, :cond_1a0

    const-string v0, "AccountManagerService"

    .line 1965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insertAccountIntoDatabase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", skipping since insertExtra failed for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1965
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_197
    .catchall {:try_start_152 .. :try_end_197} :catchall_232

    .line 1990
    :try_start_197
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v13
    :try_end_19d
    .catchall {:try_start_197 .. :try_end_19d} :catchall_239

    :try_start_19d
    monitor-exit v12
    :try_end_19e
    .catchall {:try_start_19d .. :try_end_19e} :catchall_23c

    const/4 v2, 0x0

    return v2

    :cond_1a0
    const/4 v2, 0x0

    .line 1970
    :try_start_1a1
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    const/4 v11, 0x1

    goto :goto_15a

    :cond_1a6
    if-eqz v10, :cond_1d8

    .line 1976
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1b0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1977
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 1978
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v6, p1

    .line 1977
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    goto :goto_1b0

    .line 1982
    :cond_1d8
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V

    .line 1984
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    const-string v3, "accounts"

    move-object/from16 v1, p0

    move-wide v4, v14

    move-object/from16 v6, p1

    move/from16 v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1988
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    :try_end_1ee
    .catchall {:try_start_1a1 .. :try_end_1ee} :catchall_232

    .line 1990
    :try_start_1ee
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 1992
    monitor-exit v13
    :try_end_1f4
    .catchall {:try_start_1ee .. :try_end_1f4} :catchall_239

    .line 1993
    :try_start_1f4
    monitor-exit v12
    :try_end_1f5
    .catchall {:try_start_1f4 .. :try_end_1f5} :catchall_23c

    .line 1994
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v1

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result v1

    if-eqz v1, :cond_20e

    .line 1995
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v9, v1}, Lcom/android/server/accounts/AccountManagerService;->addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V

    .line 1998
    :cond_20e
    invoke-virtual {v0, v9, v8}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2000
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2003
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v1

    if-eqz v1, :cond_229

    .line 2005
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    iget-object v3, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/pm/PersonaManagerService;->knoxAnalyticsAccountsChanged(ILjava/lang/String;Z)V

    goto :goto_22a

    :cond_229
    const/4 v4, 0x1

    .line 2009
    :goto_22a
    iget-object v1, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v2, p7

    invoke-virtual {v0, v2, v1, v10}, Lcom/android/server/accounts/AccountManagerService;->logAddAccountExplicitlyMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v4

    :catchall_232
    move-exception v0

    .line 1990
    :try_start_233
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 1991
    throw v0

    :catchall_239
    move-exception v0

    .line 1992
    monitor-exit v13
    :try_end_23b
    .catchall {:try_start_233 .. :try_end_23b} :catchall_239

    :try_start_23b
    throw v0

    :catchall_23c
    move-exception v0

    .line 1993
    monitor-exit v12
    :try_end_23e
    .catchall {:try_start_23b .. :try_end_23e} :catchall_23c

    throw v0
.end method

.method public final addAccountToLinkedRestrictedUsers(Landroid/accounts/Account;I)V
    .registers 7

    .line 2075
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    .line 2076
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 2077
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne p2, v2, :cond_c

    .line 2078
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    .line 2079
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2080
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    const/4 v3, 0x4

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, v3, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_c

    :cond_3c
    return-void
.end method

.method public final addSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .registers 9

    .line 4781
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 4782
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v5

    .line 4783
    iget-object p2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2, p1}, Lcom/android/server/accounts/AccountsDb;->deleteSharedAccount(Landroid/accounts/Account;)Z

    .line 4784
    iget-object p2, v5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p2, p1}, Lcom/android/server/accounts/AccountsDb;->insertSharedAccount(Landroid/accounts/Account;)J

    move-result-wide v3

    const-wide/16 v0, 0x0

    cmp-long p2, v3, v0

    if-gez p2, :cond_3b

    .line 4786
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "insertAccountIntoDatabase: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping the DB insert failed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 4790
    :cond_3b
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_ADD:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    const/4 p0, 0x1

    return p0
.end method

.method public addSharedAccountsFromParentUser(IILjava/lang/String;)V
    .registers 6

    const-string v0, "addSharedAccountsFromParentUser"

    .line 4773
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->checkManageOrCreateUsersPermission(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4774
    invoke-virtual {p0, v0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    .line 4775
    array-length p3, p1

    const/4 v0, 0x0

    :goto_c
    if-ge v0, p3, :cond_16

    aget-object v1, p1, v0

    .line 4776
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->addSharedAccountAsUser(Landroid/accounts/Account;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_16
    return-void
.end method

.method public final calculatePackageSignatureDigest(Ljava/lang/String;)[B
    .registers 8

    const-string v0, "AccountManagerService"

    const/4 v1, 0x0

    :try_start_3
    const-string v2, "SHA-256"

    .line 3368
    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 3369
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x40

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 3371
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, p0

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v3, :cond_3f

    aget-object v5, p0, v4

    .line 3372
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V
    :try_end_20
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_20} :catch_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_20} :catch_23

    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 3378
    :catch_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find packageinfo for: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    :catch_38
    move-exception p0

    const-string p1, "SHA-256 should be available"

    .line 3375
    invoke-static {v0, p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3e
    move-object v2, v1

    :cond_3f
    if-nez v2, :cond_42

    goto :goto_46

    .line 3381
    :cond_42
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    :goto_46
    return-object v1
.end method

.method public final canHaveProfile(I)Z
    .registers 2

    .line 2325
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 2326
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public final canUserModifyAccounts(II)Z
    .registers 4

    .line 6122
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_8

    return v0

    .line 6125
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo p1, "no_modify_accounts"

    .line 6126
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    const/4 p0, 0x0

    return p0

    :cond_20
    return v0
.end method

.method public final canUserModifyAccountsForType(ILjava/lang/String;I)Z
    .registers 7

    .line 6134
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    return v0

    .line 6137
    :cond_8
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string p3, "device_policy"

    .line 6138
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 6139
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->getAccountTypesWithManagementDisabledAsUser(I)[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_19

    return v0

    .line 6143
    :cond_19
    array-length p1, p0

    const/4 p3, 0x0

    move v1, p3

    :goto_1c
    if-ge v1, p1, :cond_2a

    aget-object v2, p0, v1

    .line 6144
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    return p3

    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2a
    return v0
.end method

.method public final cancelAccountAccessRequestNotificationIfNeeded(IZ)V
    .registers 7

    .line 463
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 464
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 465
    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public final cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V
    .registers 5

    if-eqz p4, :cond_c

    .line 491
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p4

    .line 490
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-eqz p3, :cond_19

    :cond_c
    const-string p3, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    .line 492
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p1

    .line 494
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 492
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    :cond_19
    return-void
.end method

.method public final cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V
    .registers 8

    .line 479
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 481
    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_14

    aget-object v3, v0, v2

    .line 482
    invoke-virtual {p0, p1, p2, v3, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_14
    return-void
.end method

.method public final cancelAccountAccessRequestNotificationIfNeeded(Ljava/lang/String;IZ)V
    .registers 8

    .line 471
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "android"

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 472
    array-length v1, v0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_17

    aget-object v3, v0, v2

    .line 473
    invoke-virtual {p0, v3, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;ILjava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_17
    return-void
.end method

.method public final cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V
    .registers 4

    .line 5757
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 12

    .line 5761
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 5763
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v2

    const-string v4, "android"

    .line 5764
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;->-$$Nest$fgetmId(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I

    move-result v6

    .line 5765
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v3, p2

    .line 5764
    invoke-interface/range {v2 .. v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_20
    .catchall {:try_start_4 .. :try_end_1a} :catchall_1b

    goto :goto_20

    :catchall_1b
    move-exception p0

    .line 5769
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 5770
    throw p0

    .line 5769
    :catch_20
    :goto_20
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void
.end method

.method public final checkGetAccountsPermission(Ljava/lang/String;I)Z
    .registers 5

    const-string v0, "android.permission.GET_ACCOUNTS"

    const-string v1, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    .line 5908
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final checkPackageSignature(Ljava/lang/String;II)I
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 5951
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5954
    :try_start_8
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {p0, p3}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_8 .. :try_end_e} :catchall_46

    .line 5956
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5959
    const-class p3, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/pm/PackageManagerInternal;

    .line 5961
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 5962
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 5963
    iget v1, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v1, p2, :cond_3b

    const/4 p0, 0x2

    return p0

    :cond_3b
    const/16 v2, 0x10

    .line 5966
    invoke-virtual {p3, v1, p2, v2}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_45
    return v0

    :catchall_46
    move-exception p0

    .line 5956
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5957
    throw p0
.end method

.method public final varargs checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 11

    .line 5803
    array-length v0, p3

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_48

    aget-object v3, p3, v2

    .line 5804
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_45

    const/4 v4, 0x2

    const-string v5, "AccountManagerService"

    .line 5805
    invoke-static {v5, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 5806
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  caller uid "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5808
    :cond_34
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_43

    .line 5809
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v4, v3, p2, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_45

    :cond_43
    const/4 p0, 0x1

    return p0

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_48
    return v1
.end method

.method public final checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V
    .registers 5

    .line 6110
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    :cond_7
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 6113
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, p3

    const/4 p1, 0x1

    aput-object p2, p0, p1

    const-string p1, "caller uid %s cannot access %s accounts"

    .line 6111
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 6115
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AccountManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6116
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final checkReadContactsPermission(Ljava/lang/String;I)Z
    .registers 4

    const-string v0, "android.permission.READ_CONTACTS"

    .line 5913
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .registers 7

    .line 2916
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 2917
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2920
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2918
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const-string v1, "account cannot be null"

    .line 2922
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2923
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2924
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 2931
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 2933
    :try_start_4a
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    const/4 v4, 0x0

    .line 2934
    invoke-virtual {p0, v1, p1, v4, v0}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_56

    .line 2936
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_56
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2937
    throw p0

    :cond_5b
    new-array p0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2927
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, v0

    const-string/jumbo p1, "uid %s cannot clear passwords for accounts of type: %s"

    .line 2925
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2929
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final completeCloningAccount(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .registers 22

    move-object/from16 v0, p3

    const/4 v1, 0x1

    move-object/from16 v12, p2

    .line 1862
    invoke-static {v12, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 1863
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v13

    .line 1865
    :try_start_c
    new-instance v15, Lcom/android/server/accounts/AccountManagerService$6;

    iget-object v5, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    move/from16 v11, p5

    move-object/from16 v12, p2

    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$6;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;ILandroid/os/Bundle;)V

    .line 1909
    invoke-virtual {v15}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_28
    .catchall {:try_start_c .. :try_end_28} :catchall_2c

    .line 1911
    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception v0

    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1912
    throw v0
.end method

.method public confirmCredentialsAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;ZI)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move/from16 v1, p5

    const/4 v2, 0x1

    move-object/from16 v12, p3

    .line 4020
    invoke-static {v12, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 4021
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    .line 4022
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 4023
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "confirmCredentials: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", response "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", expectActivityLaunch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", caller\'s uid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4027
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4023
    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    :cond_56
    move/from16 v8, p4

    .line 4030
    :goto_58
    invoke-virtual {v0, v3, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v3

    if-nez v3, :cond_a3

    if-eqz v4, :cond_9a

    if-eqz v11, :cond_92

    .line 4039
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v13

    .line 4041
    :try_start_66
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 4042
    new-instance v15, Lcom/android/server/accounts/AccountManagerService$12;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v9, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v10, 0x1

    const/16 v16, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object v8, v9

    move v9, v10

    move/from16 v10, v16

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$12;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    .line 4059
    invoke-virtual {v15}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_89
    .catchall {:try_start_66 .. :try_end_89} :catchall_8d

    .line 4061
    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_8d
    move-exception v0

    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4062
    throw v0

    .line 4038
    :cond_92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4037
    :cond_9a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4031
    :cond_a3
    new-instance v0, Ljava/lang/SecurityException;

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 4034
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 4035
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    const-string v1, "User %s trying to confirm account credentials for %s"

    .line 4032
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move-object/from16 v10, p2

    move/from16 v13, p3

    move/from16 v1, p4

    .line 1756
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, -0x1

    .line 1757
    invoke-virtual {v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v2

    if-nez v2, :cond_9c

    .line 1761
    invoke-virtual {v0, v13}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 1762
    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v12

    const-string v2, "AccountManagerService"

    if-eqz v3, :cond_74

    if-nez v12, :cond_24

    goto :goto_74

    .line 1776
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Copying account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1778
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v14

    .line 1780
    :try_start_50
    new-instance v16, Lcom/android/server/accounts/AccountManagerService$5;

    iget-object v5, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p1

    move/from16 v13, p3

    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$5;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Landroid/accounts/IAccountManagerResponse;Lcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 1810
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_6b
    .catchall {:try_start_50 .. :try_end_6b} :catchall_6f

    .line 1812
    invoke-static {v14, v15}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_6f
    move-exception v0

    invoke-static {v14, v15}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1813
    throw v0

    :cond_74
    :goto_74
    if-eqz v11, :cond_9b

    .line 1765
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x0

    const-string v3, "booleanResult"

    .line 1766
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1768
    :try_start_81
    invoke-interface {v11, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_84} :catch_85

    goto :goto_9b

    :catch_85
    move-exception v0

    move-object v1, v0

    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to report error back to the client."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9b
    :goto_9b
    return-void

    .line 1758
    :cond_9c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling copyAccountToUser requires android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 14

    const-string/jumbo v0, "uid"

    const/4 v1, -0x1

    .line 3386
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "authTokenType"

    .line 3388
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3390
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 3392
    invoke-virtual {p0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    const/4 v4, 0x0

    aput-object p3, v3, v4

    iget-object p3, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object p3, v3, v5

    const p3, 0x10409de

    .line 3391
    invoke-virtual {v2, p3, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const/16 v2, 0xa

    .line 3393
    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_3a

    .line 3397
    invoke-virtual {p3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v2, v5

    .line 3398
    invoke-virtual {p3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    move-object v2, p3

    move-object p3, v3

    goto :goto_3c

    :cond_3a
    const-string v2, ""

    .line 3400
    :goto_3c
    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p4

    .line 3401
    invoke-virtual {p0, p4}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    .line 3402
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v4, v3, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x108008a

    .line 3404
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 3405
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106001c

    .line 3406
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 3408
    invoke-virtual {v3, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 3409
    invoke-virtual {p3, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x14000000

    const/4 v7, 0x0

    move-object v5, p2

    move-object v8, p4

    .line 3410
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 3413
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 3414
    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p1

    .line 3415
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const-string p4, "android"

    .line 3414
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V

    return-void
.end method

.method public createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;
    .registers 12

    .line 4395
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_6d

    const-string v0, "account cannot be null"

    .line 4399
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName cannot be null"

    .line 4400
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "userHandle cannot be null"

    .line 4401
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4403
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const-string/jumbo v2, "user must be concrete"

    .line 4405
    invoke-static {p3, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    const/4 v0, 0x0

    .line 4409
    :try_start_2c
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_32
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_32} :catch_56

    .line 4415
    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v4

    .line 4417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 4419
    :try_start_3a
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x54000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 4422
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object p0
    :try_end_4d
    .catchall {:try_start_3a .. :try_end_4d} :catchall_51

    .line 4424
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_51
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4425
    throw p0

    .line 4411
    :catch_56
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown package "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 4396
    :cond_6d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can be called only by system UID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final doNotification(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V
    .registers 16

    const-string v0, "AccountManagerService"

    .line 5701
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x2

    .line 5703
    :try_start_7
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 5704
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doNotification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " intent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5707
    :cond_29
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_47

    const-class v0, Landroid/accounts/GrantCredentialsPermissionActivity;

    .line 5708
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5709
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 5708
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 5710
    invoke-virtual {p0, p2, p4, p5, p6}, Lcom/android/server/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_b2

    .line 5712
    :cond_47
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 5713
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p1

    .line 5714
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-virtual {p4, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x1040886

    .line 5717
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5718
    new-instance v4, Landroid/app/Notification$Builder;

    sget-object v5, Lcom/android/internal/notification/SystemNotificationChannels;->ACCOUNT:Ljava/lang/String;

    invoke-direct {v4, v0, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    .line 5720
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x108008a

    .line 5721
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v5, 0x106001c

    .line 5722
    invoke-virtual {v0, v5}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object p2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object p2, v4, v5

    .line 5724
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 5725
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0x14000000

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p6}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, p4

    .line 5726
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 5730
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 5731
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/server/accounts/AccountManagerService;->installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    :try_end_b2
    .catchall {:try_start_7 .. :try_end_b2} :catchall_b6

    .line 5734
    :goto_b2
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_b6
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 5735
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 5628
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v1, "AccountManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    const-string v0, "--checkin"

    .line 5629
    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "-c"

    invoke-static {p3, v0}, Lcom/android/server/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    .line 5630
    :goto_1f
    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v7, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 5632
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p2

    .line 5633
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 5634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5635
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5636
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    move-object v1, p0

    move-object v3, p1

    move-object v4, v7

    move-object v5, p3

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    .line 5637
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5638
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_32

    :cond_6f
    return-void
.end method

.method public final dumpUser(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .registers 12

    if-eqz p5, :cond_10

    .line 5647
    iget-object p5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p5

    .line 5648
    :try_start_5
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountsDb;->dumpDeAccountsTable(Ljava/io/PrintWriter;)V

    .line 5649
    monitor-exit p5

    goto/16 :goto_14a

    :catchall_d
    move-exception p0

    monitor-exit p5
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p0

    :cond_10
    const/4 v2, 0x0

    const/16 v3, 0x3e8

    const-string v4, "android"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 5651
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p5

    .line 5653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Accounts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5654
    array-length v0, p5

    const/4 v1, 0x0

    :goto_33
    if-ge v1, v0, :cond_52

    aget-object v2, p5, v1

    .line 5655
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    .line 5659
    :cond_52
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5660
    iget-object p5, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p5

    .line 5661
    :try_start_58
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p3}, Lcom/android/server/accounts/AccountsDb;->dumpDebugTable(Ljava/io/PrintWriter;)V

    .line 5662
    monitor-exit p5
    :try_end_5e
    .catchall {:try_start_58 .. :try_end_5e} :catchall_154

    .line 5663
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5664
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    monitor-enter v0

    .line 5665
    :try_start_64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 5666
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Active Sessions: "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5667
    iget-object p5, p0, Lcom/android/server/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    invoke-virtual {p5}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p5

    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_8c
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/AccountManagerService$Session;

    .line 5668
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8c

    .line 5670
    :cond_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_64 .. :try_end_b2} :catchall_151

    .line 5672
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5673
    iget-object p5, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-interface {p5, p2, p3, p4, v0}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;I)V

    .line 5676
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter p2

    .line 5677
    :try_start_c1
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p4

    invoke-virtual {p0, p4}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result p0

    .line 5678
    monitor-exit p2
    :try_end_ca
    .catchall {:try_start_c1 .. :try_end_ca} :catchall_14e

    if-nez p0, :cond_cd

    return-void

    .line 5683
    :cond_cd
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 5684
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p0

    .line 5685
    :try_start_d3
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 5686
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    move-result-object p1

    const-string p2, "Account visibility:"

    .line 5687
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5688
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_149

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/accounts/Account;

    .line 5689
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5690
    invoke-interface {p1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map;

    .line 5691
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_116
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_e6

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/util/Map$Entry;

    .line 5692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_116

    .line 5695
    :cond_149
    monitor-exit p0

    :goto_14a
    return-void

    :catchall_14b
    move-exception p1

    monitor-exit p0
    :try_end_14d
    .catchall {:try_start_d3 .. :try_end_14d} :catchall_14b

    throw p1

    :catchall_14e
    move-exception p0

    .line 5678
    :try_start_14f
    monitor-exit p2
    :try_end_150
    .catchall {:try_start_14f .. :try_end_150} :catchall_14e

    throw p0

    :catchall_151
    move-exception p0

    .line 5670
    :try_start_152
    monitor-exit v0
    :try_end_153
    .catchall {:try_start_152 .. :try_end_153} :catchall_151

    throw p0

    :catchall_154
    move-exception p0

    .line 5662
    :try_start_155
    monitor-exit p5
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    throw p0
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .registers 18

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v10, p2

    .line 4272
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    .line 4273
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 4274
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "editProperties: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", caller\'s uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4278
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4274
    invoke-static {v2, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    :cond_4c
    move/from16 v6, p3

    :goto_4e
    if-eqz v4, :cond_a9

    if-eqz v10, :cond_a1

    .line 4282
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 4283
    invoke-virtual {p0, v10, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v5

    if-nez v5, :cond_7c

    .line 4284
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v5

    if-eqz v5, :cond_63

    goto :goto_7c

    :cond_63
    new-array v0, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 4287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v10, v0, v1

    const-string/jumbo v1, "uid %s cannot edit authenticator properites for account type: %s"

    .line 4285
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4289
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4291
    :cond_7c
    :goto_7c
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v11

    .line 4293
    :try_start_80
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 4294
    new-instance v13, Lcom/android/server/accounts/AccountManagerService$16;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v13

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v10, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/server/accounts/AccountManagerService$16;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;)V

    .line 4311
    invoke-virtual {v13}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_98
    .catchall {:try_start_80 .. :try_end_98} :catchall_9c

    .line 4313
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_9c
    move-exception v0

    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4314
    throw v0

    .line 4281
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4280
    :cond_a9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .registers 13

    if-nez p4, :cond_7

    .line 6300
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p4

    .line 6302
    :goto_8
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6303
    array-length v2, p2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v2, :cond_30

    aget-object v4, p2, v3

    .line 6304
    invoke-virtual {p0, v4, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_26

    const/4 v6, 0x2

    if-eq v5, v6, :cond_26

    if-eqz p5, :cond_2d

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2d

    .line 6310
    :cond_26
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 6314
    :cond_30
    invoke-virtual {p0, p1, v1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    .line 6316
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Landroid/accounts/Account;

    .line 6317
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    return-object p0
.end method

.method public final filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6327
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    if-eqz v0, :cond_107

    if-eqz p1, :cond_107

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    if-ltz v0, :cond_107

    const/16 v0, 0x3e8

    if-ne p3, v0, :cond_14

    goto/16 :goto_107

    .line 6331
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_107

    .line 6332
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    if-eqz v0, :cond_107

    .line 6333
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_33

    new-array p3, v0, [Ljava/lang/String;

    .line 6340
    :cond_33
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10402f0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6342
    array-length v2, p3

    move v3, v0

    :goto_42
    if-ge v3, v2, :cond_64

    aget-object v4, p3, v3

    .line 6343
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_61

    return-object p2

    :cond_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 6347
    :cond_64
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object p1

    .line 6348
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    return-object p2

    :cond_73
    const-string v1, ""

    if-eqz p4, :cond_85

    .line 6356
    :try_start_77
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p4, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_b7

    .line 6357
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz p0, :cond_b7

    move-object v1, p0

    goto :goto_b7

    .line 6362
    :cond_85
    array-length p4, p3

    move v2, v0

    :goto_87
    if-ge v2, p4, :cond_b7

    aget-object v3, p3, v2

    .line 6363
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_99

    .line 6364
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;
    :try_end_95
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_77 .. :try_end_95} :catch_9c

    if-eqz v3, :cond_99

    move-object v1, v3

    goto :goto_b7

    :cond_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_87

    :catch_9c
    move-exception p0

    .line 6371
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "filterSharedAccounts#Package not found "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "AccountManagerService"

    invoke-static {p3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6373
    :cond_b7
    :goto_b7
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6374
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c4
    :goto_c4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_106

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 6375
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/accounts/Account;

    .line 6376
    iget-object v2, p4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 6377
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4

    .line 6380
    :cond_e8
    array-length v2, p1

    move v3, v0

    :goto_ea
    if-ge v3, v2, :cond_f9

    aget-object v4, p1, v3

    .line 6381
    invoke-virtual {v4, p4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f6

    const/4 v2, 0x1

    goto :goto_fa

    :cond_f6
    add-int/lit8 v3, v3, 0x1

    goto :goto_ea

    :cond_f9
    move v2, v0

    :goto_fa
    if-nez v2, :cond_c4

    .line 6387
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-interface {p0, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c4

    :cond_106
    return-object p0

    :cond_107
    :goto_107
    return-object p2
.end method

.method public final findPackagesPerVisibility(Ljava/util/Map;)[Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2027
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_47

    .line 2029
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2030
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2031
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2033
    :cond_33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_47
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2038
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x1

    .line 2040
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x2

    .line 2043
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x3

    .line 2046
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const/4 v1, 0x4

    .line 2049
    invoke-virtual {p0, v1, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    return-object p1
.end method

.method public finishSessionAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;ZLandroid/os/Bundle;I)V
    .registers 22

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v3, p5

    const-string v5, "failed to decrypt session bundle"

    const/4 v6, 0x1

    .line 3849
    invoke-static {v0, v6}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 3850
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v8, "AccountManagerService"

    const/4 v9, 0x2

    .line 3851
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_64

    .line 3852
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "finishSession: response "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", expectActivityLaunch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", caller\'s uid "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", caller\'s user id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3856
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", pid "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3857
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", for user id "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3852
    invoke-static {v8, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    :cond_64
    move/from16 v11, p3

    :goto_66
    const/4 v10, 0x0

    if-eqz v4, :cond_6b

    move v12, v6

    goto :goto_6c

    :cond_6b
    move v12, v10

    :goto_6c
    const-string/jumbo v13, "response cannot be null"

    .line 3860
    invoke-static {v12, v13}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v0, :cond_134

    .line 3863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Bundle;->size()I

    move-result v12

    if-eqz v12, :cond_134

    .line 3868
    invoke-virtual {v2, v7, v3}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v12

    if-nez v12, :cond_116

    .line 3876
    invoke-virtual {v2, v3, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v6

    if-nez v6, :cond_91

    const/16 v0, 0x64

    const-string v1, "User is not allowed to add an account!"

    .line 3877
    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3880
    invoke-virtual {v2, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3884
    :cond_91
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    const/16 v9, 0x8

    .line 3889
    :try_start_97
    invoke-static {}, Lcom/android/server/accounts/CryptoHelper;->getInstance()Lcom/android/server/accounts/CryptoHelper;

    move-result-object v10

    .line 3890
    invoke-virtual {v10, v0}, Lcom/android/server/accounts/CryptoHelper;->decryptBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_a5

    .line 3892
    invoke-virtual {v2, v4, v9, v5}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    :cond_a5
    const-string v10, "accountType"

    .line 3898
    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3901
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b8

    const/4 v0, 0x7

    const-string v1, "accountType is empty"

    .line 3902
    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    :cond_b8
    if-eqz v1, :cond_bd

    .line 3914
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_bd
    const-string v1, "callerUid"

    .line 3918
    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "callerPid"

    .line 3919
    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_c7
    .catch Ljava/security/GeneralSecurityException; {:try_start_97 .. :try_end_c7} :catch_105

    .line 3931
    invoke-virtual {v2, v3, v12, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_d8

    const/16 v0, 0x65

    const-string v1, "User cannot modify accounts of this type (policy)."

    .line 3932
    invoke-virtual {v2, v4, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    .line 3936
    invoke-virtual {v2, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3941
    :cond_d8
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v13

    .line 3943
    :try_start_dc
    invoke-virtual {v2, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3944
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_SESSION_FINISH:Ljava/lang/String;

    const-string v5, "accounts"

    invoke-virtual {v2, v3, v1, v5, v7}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3949
    new-instance v15, Lcom/android/server/accounts/AccountManagerService$11;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object v5, v12

    move/from16 v6, p3

    move-object v11, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/server/accounts/AccountManagerService$11;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/os/Bundle;Ljava/lang/String;)V

    .line 3974
    invoke-virtual {v15}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_fc
    .catchall {:try_start_dc .. :try_end_fc} :catchall_100

    .line 3976
    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_100
    move-exception v0

    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3977
    throw v0

    :catch_105
    move-exception v0

    const/4 v1, 0x3

    .line 3921
    invoke-static {v8, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_112

    const-string v1, "Failed to decrypt session bundle!"

    .line 3922
    invoke-static {v8, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3924
    :cond_112
    invoke-virtual {v2, v4, v9, v5}, Lcom/android/server/accounts/AccountManagerService;->sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V

    return-void

    .line 3869
    :cond_116
    new-instance v0, Ljava/lang/SecurityException;

    new-array v1, v9, [Ljava/lang/Object;

    .line 3872
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v10

    .line 3873
    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "User %s trying to finish session for %s without cross user permission"

    .line 3870
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3864
    :cond_134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "sessionBundle is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountByTypeAndFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    .line 4925
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 4926
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v6, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    .line 4927
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 4928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccount: accountType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", response "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", features "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4930
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4932
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4928
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    if-eqz p1, :cond_99

    if-eqz p2, :cond_91

    .line 4937
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 4939
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v9

    .line 4941
    :try_start_5a
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 4942
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, v2

    move-object v2, p2

    move v3, v6

    move-object v4, p4

    .line 4943
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p2

    .line 4946
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/accounts/AccountManagerService;->handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_71
    .catchall {:try_start_5a .. :try_end_71} :catchall_8c

    .line 4980
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    .line 4951
    :cond_75
    :try_start_75
    new-instance v3, Lcom/android/server/accounts/AccountManagerService$18;

    invoke-direct {v3, p0, p1, p4}, Lcom/android/server/accounts/AccountManagerService$18;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;)V

    .line 4971
    new-instance p1, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    const/4 v8, 0x1

    move-object v0, p1

    move-object v1, p0

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 4978
    invoke-virtual {p1}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_88
    .catchall {:try_start_75 .. :try_end_88} :catchall_8c

    .line 4980
    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_8c
    move-exception p0

    invoke-static {v9, v10}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4981
    throw p0

    .line 4935
    :cond_91
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "accountType is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4934
    :cond_99
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "response is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1053
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1054
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1055
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    const/4 v3, 0x0

    .line 1056
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 1057
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_1f

    return-object v1

    .line 1061
    :cond_1f
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1062
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1063
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_43

    const/4 v4, 0x2

    if-ne v3, v4, :cond_23

    .line 1066
    :cond_43
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_47
    return-object v1
.end method

.method public getAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;)I
    .registers 9

    const-string v0, "account cannot be null"

    .line 650
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName cannot be null"

    .line 651
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 652
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 653
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 654
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_3e

    .line 655
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_3e

    :cond_23
    new-array p0, v3, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 658
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p2

    const/4 p2, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, p2

    const-string/jumbo p1, "uid %s cannot get secrets for accounts of type: %s"

    .line 656
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 660
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 662
    :cond_3e
    :goto_3e
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v4

    .line 664
    :try_start_42
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    const-string v1, "android:accounts:key_legacy_visible"

    .line 665
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 666
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p0
    :try_end_52
    .catchall {:try_start_42 .. :try_end_52} :catchall_7f

    if-eqz p0, :cond_58

    .line 683
    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :cond_58
    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return v3

    :cond_5c
    :try_start_5c
    const-string v1, "android:accounts:key_legacy_not_visible"

    .line 673
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_73

    .line 674
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p0
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_7f

    if-eqz p0, :cond_6e

    .line 683
    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :cond_6e
    const/4 p0, 0x4

    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    .line 681
    :cond_73
    :try_start_73
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_7f

    .line 683
    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_7f
    move-exception p0

    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 684
    throw p0
.end method

.method public final getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I
    .registers 5

    .line 699
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 701
    :try_start_3
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    .line 702
    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_14

    .line 703
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    monitor-exit v0

    return p0

    :catchall_17
    move-exception p0

    .line 704
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw p0
.end method

.method public getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 11

    .line 4593
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 4594
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4595
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4597
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4598
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0

    .line 4600
    :cond_16
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v6

    .line 4602
    :try_start_1a
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p2

    .line 4603
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_29

    .line 4610
    invoke-static {v6, v7}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v6, v7}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4611
    throw p0
.end method

.method public getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 549
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x3e8

    .line 550
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    .line 551
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object v3

    if-eqz p2, :cond_1a

    .line 553
    invoke-interface {v3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1a
    if-nez p2, :cond_3e

    if-eqz v2, :cond_1f

    goto :goto_3e

    .line 555
    :cond_1f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountsAndVisibilityForPackage() called from unauthorized uid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " with packageName="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3e
    :goto_3e
    if-eqz p2, :cond_48

    .line 560
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 561
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_48
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v4

    .line 566
    :try_start_4c
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p2

    .line 567
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v3, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0
    :try_end_58
    .catchall {:try_start_4c .. :try_end_58} :catchall_5c

    .line 570
    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_5c
    move-exception p0

    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 571
    throw p0
.end method

.method public final getAccountsAndVisibilityForPackage(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 579
    invoke-static {p4}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_26

    const-string p0, "AccountManagerService"

    .line 580
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAccountsAndVisibilityForPackage#Package not found "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0

    .line 584
    :cond_26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 585
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_64

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 586
    iget-object v2, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v2

    .line 587
    :try_start_3e
    iget-object v3, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_61

    .line 588
    :try_start_41
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/accounts/Account;

    if-eqz v1, :cond_5b

    .line 590
    array-length v4, v1

    const/4 v5, 0x0

    :goto_4d
    if-ge v5, v4, :cond_5b

    aget-object v6, v1, v5

    .line 592
    invoke-virtual {p0, v6, p1, p4}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v7

    .line 591
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_4d

    .line 595
    :cond_5b
    monitor-exit v3
    :try_end_5c
    .catchall {:try_start_41 .. :try_end_5c} :catchall_5e

    .line 596
    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_61

    goto :goto_2f

    :catchall_5e
    move-exception p0

    .line 595
    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw p0

    :catchall_61
    move-exception p0

    .line 596
    monitor-exit v2
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_61

    throw p0

    .line 598
    :cond_64
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p4, v0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->filterSharedAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/util/Map;ILjava/lang/String;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 13

    .line 4679
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4680
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v7, p3

    .line 4681
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0
.end method

.method public final getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .registers 12

    .line 4693
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4695
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq p2, v1, :cond_3c

    if-eq v0, v2, :cond_3c

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 4697
    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_19

    goto :goto_3c

    .line 4700
    :cond_19
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " trying to get account for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3c
    :goto_3c
    const/4 v1, 0x2

    const-string v3, "AccountManagerService"

    .line 4704
    invoke-static {v3, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 4705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccounts: accountType "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4706
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4707
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4705
    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4714
    :cond_71
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object v1

    const/4 v3, -0x1

    if-eq p4, v3, :cond_8b

    .line 4716
    invoke-static {v0, v2}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_8d

    if-eqz p1, :cond_8b

    .line 4717
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8b

    goto :goto_8d

    :cond_8b
    move-object p3, p5

    move p4, v0

    .line 4721
    :cond_8d
    :goto_8d
    invoke-virtual {p0, p4, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object p5

    .line 4723
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c6

    if-eqz p1, :cond_a0

    .line 4724
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a0

    goto :goto_c6

    .line 4726
    :cond_a0
    invoke-interface {p5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 4728
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 4729
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4733
    :cond_ae
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 4735
    :try_start_b2
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1

    move p2, p4

    move-object p4, p5

    move p5, p6

    .line 4736
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/accounts/AccountManagerService;->getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;

    move-result-object p0
    :try_end_bd
    .catchall {:try_start_b2 .. :try_end_bd} :catchall_c1

    .line 4743
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_c1
    move-exception p0

    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4744
    throw p0

    .line 4725
    :cond_c6
    :goto_c6
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 19

    move-object v0, p0

    move-object v7, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v8, p4

    .line 4990
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 4991
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v9, v8}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 4992
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 4993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccounts: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4995
    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4997
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4993
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    if-eqz v7, :cond_ce

    if-eqz v5, :cond_c6

    .line 5001
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 5003
    invoke-virtual {p0, v9, v2, v8}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 5005
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string v10, "accounts"

    if-nez v3, :cond_80

    .line 5006
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 5008
    sget-object v2, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    invoke-virtual {v0, v10, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5010
    :try_start_74
    invoke-interface {p1, v0}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_7f

    :catch_78
    move-exception v0

    move-object v2, v0

    const-string v0, "Cannot respond to caller do to exception."

    .line 5012
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7f
    return-void

    .line 5017
    :cond_80
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v11

    .line 5019
    :try_start_84
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    if-eqz v6, :cond_a6

    .line 5020
    array-length v1, v6

    if-nez v1, :cond_8e

    goto :goto_a6

    .line 5028
    :cond_8e
    new-instance v10, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    const/4 v13, 0x0

    move-object v1, v10

    move-object v2, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move v7, v9

    move-object/from16 v8, p4

    move v9, v13

    invoke-direct/range {v1 .. v9}, Lcom/android/server/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;ILjava/lang/String;Z)V

    .line 5035
    invoke-virtual {v10}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_c1

    .line 5037
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :cond_a6
    :goto_a6
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v3

    move-object/from16 v3, p2

    move v4, v9

    move-object/from16 v5, p4

    .line 5021
    :try_start_ae
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    .line 5023
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 5024
    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 5025
    invoke-virtual {p0, p1, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_bd
    .catchall {:try_start_ae .. :try_end_bd} :catchall_c1

    .line 5037
    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_c1
    move-exception v0

    invoke-static {v11, v12}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 5038
    throw v0

    .line 5000
    :cond_c6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4999
    :cond_ce
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccountsByTypeForPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Landroid/accounts/Account;
    .registers 12

    .line 4855
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4856
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 4857
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p3}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 4860
    :try_start_d
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p2, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_13} :catch_42

    const/16 v1, 0x3e8

    .line 4865
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz p1, :cond_26

    .line 4866
    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_26

    .line 4867
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0

    .line 4869
    :cond_26
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-nez v0, :cond_38

    if-nez p1, :cond_38

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    .line 4870
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :cond_38
    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p3

    .line 4873
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :catch_42
    move-exception p0

    .line 4862
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t determine the packageUid for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4863
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0
.end method

.method public getAccountsForPackage(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;
    .registers 13

    .line 4841
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    .line 4842
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_1b

    const/4 v3, 0x0

    .line 4847
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/4 v8, 0x1

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUserForPackage(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    .line 4844
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getAccountsForPackage() called from unauthorized uid "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " with uid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAccountsForSystem([I)[Landroid/accounts/AccountAndUser;
    .registers 13

    .line 4657
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 4658
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_33

    aget v4, p1, v3

    .line 4659
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    if-nez v6, :cond_12

    goto :goto_30

    :cond_12
    const/4 v7, 0x0

    .line 4664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const/4 v10, 0x0

    const-string v9, "android"

    move-object v5, p0

    .line 4661
    invoke-virtual/range {v5 .. v10}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v5

    .line 4667
    array-length v6, v5

    move v7, v2

    :goto_21
    if-ge v7, v6, :cond_30

    aget-object v8, v5, v7

    .line 4668
    new-instance v9, Landroid/accounts/AccountAndUser;

    invoke-direct {v9, v8, v4}, Landroid/accounts/AccountAndUser;-><init>(Landroid/accounts/Account;I)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    :cond_30
    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4672
    :cond_33
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/accounts/AccountAndUser;

    .line 4673
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/AccountAndUser;

    return-object p0
.end method

.method public getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;
    .registers 12

    .line 6407
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Method should not be called with cacheLock"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    if-eqz p2, :cond_35

    .line 6411
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6412
    :try_start_12
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/accounts/Account;

    .line 6413
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_32

    if-nez p2, :cond_20

    .line 6415
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    return-object p0

    .line 6417
    :cond_20
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, [Landroid/accounts/Account;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :catchall_32
    move-exception p0

    .line 6413
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0

    .line 6423
    :cond_35
    iget-object p2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p2

    .line 6424
    :try_start_38
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_44
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/accounts/Account;

    .line 6425
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_44

    :cond_53
    if-nez v2, :cond_59

    .line 6428
    sget-object p0, Lcom/android/server/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    monitor-exit p2

    return-object p0

    .line 6430
    :cond_59
    new-array v2, v2, [Landroid/accounts/Account;

    .line 6432
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    :goto_66
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/accounts/Account;

    .line 6433
    array-length v5, v4

    invoke-static {v4, v1, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6435
    array-length v4, v4

    add-int/2addr v3, v4

    goto :goto_66

    .line 6437
    :cond_79
    monitor-exit p2
    :try_end_7a
    .catchall {:try_start_38 .. :try_end_7a} :catchall_84

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 6438
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->filterAccounts(Lcom/android/server/accounts/AccountManagerService$UserAccounts;[Landroid/accounts/Account;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object p0

    return-object p0

    :catchall_84
    move-exception p0

    .line 6437
    :try_start_85
    monitor-exit p2
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p0
.end method

.method public final getAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;ILjava/lang/String;Ljava/util/List;Z)[Landroid/accounts/Account;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)[",
            "Landroid/accounts/Account;"
        }
    .end annotation

    .line 4754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4755
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_9
    :goto_9
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    move v7, p5

    .line 4756
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountsFromCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;ILjava/lang/String;Z)[Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 4760
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 4763
    :cond_29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/accounts/Account;

    const/4 p1, 0x0

    .line 4764
    :goto_30
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_41

    .line 4765
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/accounts/Account;

    aput-object p2, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    :cond_41
    return-object p0
.end method

.method public getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;
    .registers 6

    .line 4641
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 4642
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1e

    .line 4644
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 4646
    :cond_1e
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->getAccountsForSystem([I)[Landroid/accounts/AccountAndUser;

    move-result-object p0

    return-object p0
.end method

.method public final getApplicationLabel(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    .line 3420
    :try_start_0
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    .line 3421
    invoke-virtual {p0, p1, v0, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    .line 3420
    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 3421
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    :catch_10
    return-object p1
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .registers 32

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object/from16 v10, p6

    const/4 v1, 0x1

    .line 3121
    invoke-static {v10, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const-string v8, "AccountManagerService"

    const/4 v9, 0x2

    .line 3122
    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 3123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAuthToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", notifyOnAuthFailure "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p5

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3128
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3123
    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    :cond_68
    move/from16 v14, p5

    :goto_6a
    if-eqz v7, :cond_6e

    move v3, v1

    goto :goto_6f

    :cond_6e
    const/4 v3, 0x0

    :goto_6f
    const-string/jumbo v4, "response cannot be null"

    .line 3131
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v3, 0x7

    if-nez v11, :cond_85

    :try_start_78
    const-string v0, "getAuthToken called with null account"

    .line 3134
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "account is null"

    .line 3135
    invoke-interface {v7, v3, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V

    return-void

    :catch_83
    move-exception v0

    goto :goto_92

    :cond_85
    if-nez v12, :cond_a7

    const-string v0, "getAuthToken called with null authTokenType"

    .line 3139
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "authTokenType is null"

    .line 3140
    invoke-interface {v7, v3, v0}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_91
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_91} :catch_83

    return-void

    .line 3144
    :goto_92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to report error back to the client."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3147
    :cond_a7
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 3148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 3152
    :try_start_af
    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v15

    .line 3153
    iget-object v6, v0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    iget-object v2, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 3154
    invoke-static {v2}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    invoke-static {v15}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v9

    .line 3153
    invoke-interface {v6, v2, v9}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getServiceInfo(Landroid/accounts/AuthenticatorDescription;I)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2
    :try_end_c3
    .catchall {:try_start_af .. :try_end_c3} :catchall_1f4

    .line 3156
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_d3

    .line 3159
    iget-object v2, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v2, v2, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v2, :cond_d3

    move/from16 v18, v1

    goto :goto_d5

    :cond_d3
    const/16 v18, 0x0

    .line 3163
    :goto_d5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    if-nez v18, :cond_e5

    .line 3165
    invoke-virtual {v0, v11, v12, v9, v3}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_e2

    goto :goto_e5

    :cond_e2
    const/16 v19, 0x0

    goto :goto_e7

    :cond_e5
    :goto_e5
    move/from16 v19, v1

    :goto_e7
    const-string v2, "androidPackageName"

    .line 3168
    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3170
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3172
    :try_start_f1
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4
    :try_end_f7
    .catchall {:try_start_f1 .. :try_end_f7} :catchall_1ef

    .line 3174
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v6, :cond_1d4

    if-eqz v4, :cond_1d4

    .line 3177
    invoke-static {v4, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d4

    const-string v2, "callerUid"

    .line 3186
    invoke-virtual {v10, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3187
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "callerPid"

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v13, :cond_11a

    const-string/jumbo v2, "notifyOnAuthFailure"

    .line 3190
    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3193
    :cond_11a
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v20

    .line 3196
    :try_start_11e
    invoke-virtual {v0, v6}, Lcom/android/server/accounts/AccountManagerService;->calculatePackageSignatureDigest(Ljava/lang/String;)[B

    move-result-object v22
    :try_end_122
    .catchall {:try_start_11e .. :try_end_122} :catchall_1cf

    const-string v5, "accountType"

    const-string v4, "authAccount"

    const-string v3, "authtoken"

    if-nez v18, :cond_150

    if-eqz v19, :cond_150

    .line 3201
    :try_start_12c
    invoke-virtual {v0, v15, v11, v12}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_150

    .line 3203
    iget-object v2, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/accounts/AccountManagerService;->logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V

    .line 3204
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3205
    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    iget-object v1, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    iget-object v1, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    invoke-virtual {v0, v7, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_14c
    .catchall {:try_start_12c .. :try_end_14c} :catchall_1cf

    .line 3351
    invoke-static/range {v20 .. v21}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :cond_150
    if-eqz v18, :cond_19b

    move-object/from16 v1, p0

    move-object v2, v15

    move/from16 v23, v9

    move-object v9, v3

    move-object/from16 v3, p2

    move-object v10, v4

    move-object/from16 v4, p3

    move-object v12, v5

    move-object v5, v6

    move-object v14, v6

    move-object/from16 v6, v22

    .line 3219
    :try_start_162
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/server/accounts/TokenCache$Value;

    move-result-object v1

    if-eqz v1, :cond_19e

    .line 3226
    iget-object v2, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v14, v2}, Lcom/android/server/accounts/AccountManagerService;->logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 3227
    invoke-static {v8, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_179

    const-string v2, "getAuthToken: cache hit ofr custom token authenticator."

    .line 3228
    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3230
    :cond_179
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 3231
    iget-object v3, v1, Lcom/android/server/accounts/TokenCache$Value;->token:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "android.accounts.expiry"

    .line 3232
    iget-wide v4, v1, Lcom/android/server/accounts/TokenCache$Value;->expiryEpochMillis:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3234
    iget-object v1, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    iget-object v1, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v12, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3236
    invoke-virtual {v0, v7, v2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_197
    .catchall {:try_start_162 .. :try_end_197} :catchall_1cf

    .line 3351
    invoke-static/range {v20 .. v21}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :cond_19b
    move-object v14, v6

    move/from16 v23, v9

    .line 3241
    :cond_19e
    :try_start_19e
    new-instance v24, Lcom/android/server/accounts/AccountManagerService$8;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v10, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v1, v24

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, p1

    move/from16 v6, p5

    move v7, v8

    move-object v8, v10

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move-object v0, v14

    move/from16 v14, v19

    move-object/from16 v19, v15

    move-object v15, v0

    move/from16 v16, v23

    move/from16 v17, v18

    move-object/from16 v18, v22

    invoke-direct/range {v1 .. v19}, Lcom/android/server/accounts/AccountManagerService$8;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZLjava/lang/String;IZ[BLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 3349
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_1cb
    .catchall {:try_start_19e .. :try_end_1cb} :catchall_1cf

    .line 3351
    invoke-static/range {v20 .. v21}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_1cf
    move-exception v0

    invoke-static/range {v20 .. v21}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3352
    throw v0

    :cond_1d4
    move-object v0, v6

    move/from16 v23, v9

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 3180
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    aput-object v0, v2, v1

    const-string v0, "Uid %s is attempting to illegally masquerade as package %s!"

    .line 3178
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3182
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1ef
    move-exception v0

    .line 3174
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3175
    throw v0

    :catchall_1f4
    move-exception v0

    .line 3156
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3157
    throw v0
.end method

.method public getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    const-string v3, "accountType cannot be null"

    .line 3062
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p3, :cond_f

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    const-string v1, "authTokenType cannot be null"

    .line 3063
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3065
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v0

    .line 3066
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    .line 3067
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_50

    .line 3070
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3071
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v13

    move-object v1, p0

    .line 3073
    :try_start_2d
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v4

    .line 3074
    new-instance v0, Lcom/android/server/accounts/AccountManagerService$7;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    invoke-direct/range {v2 .. v12}, Lcom/android/server/accounts/AccountManagerService$7;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 3107
    invoke-virtual {v0}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_47
    .catchall {:try_start_2d .. :try_end_47} :catchall_4b

    .line 3109
    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_4b
    move-exception v0

    invoke-static {v13, v14}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3110
    throw v0

    .line 3068
    :cond_50
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "can only call from system"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAuthenticatorTypes(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 7

    .line 1679
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 1680
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1681
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAuthenticatorTypes: for user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1681
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_35
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 1689
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-nez v0, :cond_47

    .line 1690
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_74

    :cond_47
    if-nez p1, :cond_54

    .line 1691
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_54

    goto :goto_74

    .line 1693
    :cond_54
    new-instance p0, Ljava/lang/SecurityException;

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1696
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 1697
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "User %s tying to get authenticator types for %s"

    .line 1694
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1701
    :cond_74
    :goto_74
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1703
    :try_start_78
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object p0
    :try_end_7c
    .catchall {:try_start_78 .. :try_end_7c} :catchall_80

    .line 1706
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_80
    move-exception p0

    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1707
    throw p0
.end method

.method public final getAuthenticatorTypesInternal(I)[Landroid/accounts/AuthenticatorDescription;
    .registers 4

    .line 1714
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {v0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->updateServices(I)V

    .line 1716
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p0

    .line 1718
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p1

    new-array p1, p1, [Landroid/accounts/AuthenticatorDescription;

    .line 1721
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1722
    iget-object v1, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2b
    return-object p1
.end method

.method public getBindInstantServiceAllowed(I)Z
    .registers 2

    .line 454
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {p0, p1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getBindInstantServiceAllowed(I)Z

    move-result p0

    return p0
.end method

.method public final getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5

    .line 6532
    :try_start_0
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    .line 6535
    :catch_c
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 8

    .line 3452
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    .line 3453
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 3454
    :try_start_d
    new-instance v1, Landroid/util/Pair;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3456
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3457
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    if-nez v2, :cond_5e

    .line 3459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AccountManagerService:38:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3460
    invoke-virtual {p1}, Landroid/accounts/Account;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x26

    .line 3462
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    invoke-direct {v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    .line 3463
    invoke-static {p0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3465
    :cond_5e
    monitor-exit v0

    return-object v2

    :catchall_60
    move-exception p0

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_d .. :try_end_62} :catchall_60

    throw p0
.end method

.method public final getDefaultCantAddAccountIntent(I)Landroid/content/Intent;
    .registers 4

    .line 4007
    new-instance v0, Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/accounts/CantAddAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "android.accounts.extra.ERROR_CODE"

    .line 4008
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 4009
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public final getPackageNameForUid(I)Ljava/lang/String;
    .registers 9

    .line 4342
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 4343
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    :cond_e
    const/4 v0, 0x0

    .line 4346
    aget-object v1, p1, v0

    .line 4347
    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    return-object v1

    :cond_16
    const v2, 0x7fffffff

    .line 4352
    array-length v3, p1

    move v4, v0

    :goto_1b
    if-ge v4, v3, :cond_30

    aget-object v5, p1, v4

    .line 4354
    :try_start_1f
    iget-object v6, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    if-eqz v6, :cond_2d

    .line 4356
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1f .. :try_end_29} :catch_2d

    if-ge v6, v2, :cond_2d

    move-object v1, v5

    move v2, v6

    :catch_2d
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_30
    return-object v1
.end method

.method public getPackagesAndVisibilityForAccount(Landroid/accounts/Account;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "account cannot be null"

    .line 603
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 604
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 605
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 606
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_36

    .line 607
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_36

    :cond_1c
    const-string/jumbo p0, "uid %s cannot get secrets for account %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 609
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 610
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 613
    :cond_36
    :goto_36
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 615
    :try_start_3a
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 616
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_41
    .catchall {:try_start_3a .. :try_end_41} :catchall_54

    .line 617
    :try_start_41
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_51

    .line 618
    :try_start_44
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    monitor-exit v4
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_4e

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_51

    .line 622
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_4e
    move-exception p0

    .line 619
    :try_start_4f
    monitor-exit v4
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw p0

    :catchall_51
    move-exception p0

    .line 620
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_51

    :try_start_53
    throw p0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception p0

    .line 622
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 623
    throw p0
.end method

.method public final getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 638
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_22

    const-string p0, "AccountManagerService"

    const-string v0, "Visibility was not initialized"

    .line 640
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 642
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    :cond_22
    return-object p0
.end method

.method public final getPackagesForVisibilityStr(ILjava/util/Map;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2056
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2057
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2058
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    const-string p2, ","

    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2a

    :cond_28
    const-string p1, ""

    .line 2059
    :goto_2a
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 7

    .line 1565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 1566
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 1567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPassword: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1568
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1569
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1567
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    if-eqz p1, :cond_77

    .line 1572
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 1573
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 1580
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 1582
    :try_start_4b
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1583
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_57

    .line 1585
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_57
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1586
    throw p0

    :cond_5c
    new-array p0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1576
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v1

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, v0

    const-string/jumbo p1, "uid %s cannot get secrets for accounts of type: %s"

    .line 1574
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1578
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1571
    :cond_77
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPreviousName(Landroid/accounts/Account;)Ljava/lang/String;
    .registers 5

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    .line 1608
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", caller\'s uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1611
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1609
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    const-string v0, "account cannot be null"

    .line 1613
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1614
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1615
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 1617
    :try_start_42
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 1618
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p0
    :try_end_4a
    .catchall {:try_start_42 .. :try_end_4a} :catchall_4e

    .line 1620
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_4e
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1621
    throw p0
.end method

.method public final getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1035
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1036
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x2

    :try_start_b
    new-array v3, v2, [Ljava/lang/String;

    .line 1037
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x0

    const/4 v6, 0x1

    aput-object v4, v3, v6

    :goto_16
    if-ge v5, v2, :cond_30

    aget-object v4, v3, v5

    .line 1038
    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_2d

    .line 1040
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2d
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1043
    :cond_30
    monitor-exit v1
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_4f

    .line 1044
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1045
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1046
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    :cond_4e
    return-object v1

    :catchall_4f
    move-exception p0

    .line 1043
    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public getRunningAccountsForSystem()[Landroid/accounts/AccountAndUser;
    .registers 2

    .line 4624
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_d

    .line 4629
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getAccountsForSystem([I)[Landroid/accounts/AccountAndUser;

    move-result-object p0

    return-object p0

    :catch_d
    move-exception p0

    .line 4627
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getSharedAccountsAsUser(I)[Landroid/accounts/Account;
    .registers 3

    .line 4828
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p1

    .line 4829
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    .line 4830
    iget-object p1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p1

    .line 4831
    :try_start_b
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->getSharedAccounts()Ljava/util/List;

    move-result-object p0

    .line 4832
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/accounts/Account;

    .line 4833
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4834
    monitor-exit p1

    return-object v0

    :catchall_1c
    move-exception p0

    .line 4835
    monitor-exit p1
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;
    .registers 6

    .line 3471
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetsigninRequiredNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    monitor-enter p0

    .line 3472
    :try_start_5
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetsigninRequiredNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    if-nez v0, :cond_35

    .line 3474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccountManagerService:37:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3475
    invoke-virtual {p2}, Landroid/accounts/Account;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x25

    .line 3477
    new-instance v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    invoke-direct {v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;-><init>(Ljava/lang/String;I)V

    .line 3478
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetsigninRequiredNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 3480
    :cond_35
    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception p1

    monitor-exit p0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public final getTypesForCaller(IIZ)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5995
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5996
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5999
    :try_start_9
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {p0, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->getAllServices(I)Ljava/util/Collection;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_41

    .line 6001
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6004
    const-class p2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/PackageManagerInternal;

    .line 6006
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1e
    :goto_1e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    if-nez p3, :cond_36

    .line 6007
    iget v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    const/16 v3, 0x10

    invoke-virtual {p2, v2, p1, v3}, Landroid/content/pm/PackageManagerInternal;->hasSignatureCapability(III)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 6009
    :cond_36
    iget-object v1, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_40
    return-object v0

    :catchall_41
    move-exception p0

    .line 6001
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6002
    throw p0
.end method

.method public final getTypesManagedByCaller(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5990
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p3, 0x1

    .line 5986
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesForCaller(IIZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;
    .registers 5

    .line 1338
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x2000

    .line 1339
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    .line 1341
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 1342
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 1343
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_15

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_15

    .line 1345
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_15

    :cond_33
    return-object p1
.end method

.method public getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 7

    .line 1375
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsNotChecked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception v0

    .line 1377
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.type.automotive"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 1383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " due to exception ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") reading its account database"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne p1, v1, :cond_5e

    if-eqz p1, :cond_5e

    const-string v1, "Switching to system user first"

    .line 1386
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :try_start_40
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_48} :catch_49

    goto :goto_5e

    :catch_49
    move-exception v1

    .line 1390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not switch to 0: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUserEvenWhenDisallowed(I)Z

    move-result p0

    if-nez p0, :cond_7c

    .line 1394
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not remove user "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_7c
    throw v0

    .line 1379
    :cond_7d
    throw v0
.end method

.method public final getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 2

    .line 1370
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    return-object p0
.end method

.method public final getUserAccountsNotChecked(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    .registers 10

    .line 1401
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1402
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_39

    .line 1405
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v2, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getPreNDatabaseName(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1406
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v4, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getDeDatabaseName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1407
    new-instance v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    iget-object v5, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;-><init>(Landroid/content/Context;ILjava/io/File;Ljava/io/File;)V

    .line 1408
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1409
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1410
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    move v2, v3

    move-object v1, v4

    .line 1414
    :cond_39
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->isCeDatabaseAttached()Z

    move-result v4

    if-nez v4, :cond_86

    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_86

    const-string v4, "AccountManagerService"

    .line 1415
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is unlocked - opening CE database"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_67
    .catchall {:try_start_3 .. :try_end_67} :catchall_8d

    .line 1417
    :try_start_67
    iget-object v5, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_83

    .line 1418
    :try_start_6a
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v7, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getCeDatabaseName(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1419
    iget-object p1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1, v6}, Lcom/android/server/accounts/AccountsDb;->attachCeDatabase(Ljava/io/File;)V

    .line 1420
    monitor-exit v5
    :try_end_7b
    .catchall {:try_start_6a .. :try_end_7b} :catchall_80

    .line 1421
    :try_start_7b
    monitor-exit v4
    :try_end_7c
    .catchall {:try_start_7b .. :try_end_7c} :catchall_83

    .line 1422
    :try_start_7c
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_8d

    goto :goto_86

    :catchall_80
    move-exception p0

    .line 1420
    :try_start_81
    monitor-exit v5
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    :try_start_82
    throw p0

    :catchall_83
    move-exception p0

    .line 1421
    monitor-exit v4
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_83

    :try_start_85
    throw p0

    :cond_86
    :goto_86
    if-eqz v2, :cond_8b

    .line 1425
    invoke-virtual {p0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    .line 1427
    :cond_8b
    monitor-exit v0

    return-object v1

    :catchall_8d
    move-exception p0

    .line 1428
    monitor-exit v0
    :try_end_8f
    .catchall {:try_start_85 .. :try_end_8f} :catchall_8d

    throw p0
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .line 1645
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 1646
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_31

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    aput-object p2, v3, v4

    .line 1648
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    const/4 v6, 0x3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const-string/jumbo v6, "getUserData( account: %s, key: %s, callerUid: %s, pid: %s"

    .line 1647
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1649
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    const-string v3, "account cannot be null"

    .line 1651
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v3, "key cannot be null"

    .line 1652
    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1653
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1654
    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v6, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-eqz v6, :cond_8b

    .line 1661
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_6c

    .line 1662
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "User "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data is locked. callingUid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 1665
    :cond_6c
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 1667
    :try_start_70
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 1668
    invoke-virtual {p0, v2, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v3
    :try_end_78
    .catchall {:try_start_70 .. :try_end_78} :catchall_86

    if-nez v3, :cond_7e

    .line 1673
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object v4

    .line 1671
    :cond_7e
    :try_start_7e
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_86

    .line 1673
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_86
    move-exception p0

    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1674
    throw p0

    :cond_8b
    new-array p0, v2, [Ljava/lang/Object;

    .line 1657
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, v5

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, v4

    const-string/jumbo p1, "uid %s cannot get user data for accounts of type: %s"

    .line 1655
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1659
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 2

    .line 1155
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_c

    .line 1156
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    .line 1158
    :cond_c
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 11

    if-eqz p1, :cond_5d

    if-nez p2, :cond_5

    goto :goto_5d

    .line 6186
    :cond_5
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 6187
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6188
    :try_start_10
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_5a

    .line 6189
    :try_start_13
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_24

    .line 6191
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5, v3, v4, p2, p3}, Lcom/android/server/accounts/AccountsDb;->insertGrant(JLjava/lang/String;I)J

    .line 6194
    :cond_24
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p2

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    .line 6195
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 6193
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    const/4 p2, 0x1

    .line 6197
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/accounts/AccountManagerService;->cancelAccountAccessRequestNotificationIfNeeded(Landroid/accounts/Account;IZ)V

    .line 6198
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_57

    .line 6199
    :try_start_38
    monitor-exit v1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_5a

    .line 6203
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 6204
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v2, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, p1, p3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda4;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3f

    :cond_56
    return-void

    :catchall_57
    move-exception p0

    .line 6198
    :try_start_58
    monitor-exit v2
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw p0

    :catchall_5a
    move-exception p0

    .line 6199
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5a

    throw p0

    :cond_5d
    :goto_5d
    const-string p0, "AccountManagerService"

    const-string/jumbo p1, "grantAppPermission: called with invalid arguments"

    .line 6183
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final handleGetAccountsResult(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 7

    .line 4903
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4904
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V

    return-void

    .line 4907
    :cond_a
    array-length p3, p2

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2a

    .line 4908
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x0

    .line 4909
    aget-object v1, p2, v0

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v2, "authAccount"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4910
    aget-object p2, p2, v0

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v0, "accountType"

    invoke-virtual {p3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4911
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void

    .line 4915
    :cond_2a
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V

    return-void
.end method

.method public final handleIncomingUser(I)I
    .registers 10

    .line 5820
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 5821
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    move v3, p1

    .line 5820
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return p0

    :catch_17
    return p1
.end method

.method public final hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p2, :cond_a

    .line 4372
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    return v0

    :cond_a
    const/4 v1, 0x0

    .line 4380
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, p1, v1, p3, v2}, Lcom/android/server/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    return v2

    .line 4387
    :cond_17
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p3

    .line 4386
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, v2, :cond_2c

    const/4 p1, 0x2

    if-ne p0, p1, :cond_2d

    :cond_2c
    move v0, v2

    :cond_2d
    return v0
.end method

.method public hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 7

    .line 4320
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_53

    const-string v0, "account cannot be null"

    .line 4323
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName cannot be null"

    .line 4324
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "userHandle cannot be null"

    .line 4325
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4327
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    const v0, 0x7fffffff

    const/4 v1, 0x0

    const-string/jumbo v2, "user must be concrete"

    .line 4329
    invoke-static {p3, v1, v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 4332
    :try_start_2b
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p3

    .line 4333
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0
    :try_end_35
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_35} :catch_36

    return p0

    :catch_36
    move-exception p0

    .line 4335
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "hasAccountAccess#Package not found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 4321
    :cond_53
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can be called only by system UID"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 11

    .line 6046
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_a

    return v1

    .line 6049
    :cond_a
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    .line 6050
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6051
    :try_start_15
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_71

    if-eqz p2, :cond_21

    .line 6054
    :try_start_1a
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 6055
    invoke-virtual {p0, p3, p2, p1}, Lcom/android/server/accounts/AccountsDb;->findMatchingGrantsCount(ILjava/lang/String;Landroid/accounts/Account;)J

    move-result-wide v3

    goto :goto_27

    .line 6057
    :cond_21
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0, p3, p1}, Lcom/android/server/accounts/AccountsDb;->findMatchingGrantsCountAnyToken(ILandroid/accounts/Account;)J

    move-result-wide v3

    :goto_27
    const-wide/16 v5, 0x0

    cmp-long p0, v3, v5

    if-lez p0, :cond_2f

    move p0, v1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    if-nez p0, :cond_6b

    .line 6062
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v3

    if-eqz v3, :cond_6b

    const-string p0, "AccountManagerService"

    .line 6065
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no credentials permission for usage of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6066
    invoke-virtual {p1}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " by uid "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but ignoring since device is in test harness."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6065
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6069
    monitor-exit v2
    :try_end_69
    .catchall {:try_start_1a .. :try_end_69} :catchall_6e

    :try_start_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_71

    return v1

    .line 6071
    :cond_6b
    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6e

    :try_start_6c
    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_71

    return p0

    :catchall_6e
    move-exception p0

    .line 6072
    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    throw p0

    :catchall_71
    move-exception p0

    .line 6073
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 2090
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2091
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 2092
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 2093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hasFeatures: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", features "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2097
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2093
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4f
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_55

    move v3, v1

    goto :goto_56

    :cond_55
    move v3, v2

    :goto_56
    const-string v4, "account cannot be null"

    .line 2099
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_5f

    move v3, v1

    goto :goto_60

    :cond_5f
    move v3, v2

    :goto_60
    const-string/jumbo v4, "response cannot be null"

    .line 2100
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p3, :cond_69

    goto :goto_6a

    :cond_69
    move v1, v2

    :goto_6a
    const-string v2, "features cannot be null"

    .line 2101
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2102
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2103
    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1, p4}, Lcom/android/server/accounts/AccountManagerService;->checkReadAccountsPermitted(ILjava/lang/String;ILjava/lang/String;)V

    .line 2106
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 2108
    :try_start_7c
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v6

    .line 2109
    new-instance p4, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;

    move-object v4, p4

    move-object v5, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService$TestFeaturesSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_8d
    .catchall {:try_start_7c .. :try_end_8d} :catchall_91

    .line 2111
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_91
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2112
    throw p0
.end method

.method public final insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;
    .registers 6

    .line 6281
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    .line 6282
    array-length v1, p0

    goto :goto_10

    :cond_f
    move v1, v0

    :goto_10
    add-int/lit8 v2, v1, 0x1

    .line 6283
    new-array v2, v2, [Landroid/accounts/Account;

    if-eqz p0, :cond_19

    .line 6285
    invoke-static {p0, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6287
    :cond_19
    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_24

    invoke-virtual {p2}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object p0

    goto :goto_2c

    .line 6288
    :cond_24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    .line 6289
    :goto_2c
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, p2, p0}, Landroid/accounts/Account;-><init>(Landroid/accounts/Account;Ljava/lang/String;)V

    aput-object v0, v2, v1

    .line 6290
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object p1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6291
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 6292
    aget-object p0, v2, v1

    return-object p0
.end method

.method public final installNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/app/Notification;Ljava/lang/String;I)V
    .registers 14

    .line 5740
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 5742
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService$Injector;->getNotificationManager()Landroid/app/INotificationManager;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_1c

    :try_start_a
    const-string v4, "android"

    .line 5746
    iget-object v5, p1, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$NotificationId;->-$$Nest$fgetmId(Lcom/android/server/accounts/AccountManagerService$NotificationId;)I

    move-result v6

    move-object v3, p3

    move-object v7, p2

    move v8, p4

    invoke-interface/range {v2 .. v8}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_18} :catch_18
    .catchall {:try_start_a .. :try_end_18} :catchall_1c

    .line 5752
    :catch_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5753
    throw p0
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 2658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "accountType cannot be null"

    .line 2659
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "authToken cannot be null"

    .line 2660
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 2661
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_42

    const-string v1, "AccountManagerService"

    .line 2662
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invalidateAuthToken: accountType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pid "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2664
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2662
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_42
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 2667
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 2669
    :try_start_4a
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2671
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_51
    .catchall {:try_start_4a .. :try_end_51} :catchall_9e

    .line 2672
    :try_start_51
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_9b

    .line 2674
    :try_start_56
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2675
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_5f
    .catchall {:try_start_56 .. :try_end_5f} :catchall_94

    .line 2677
    :try_start_5f
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v5}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2679
    iget-object v5, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_9b

    .line 2680
    :try_start_67
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_84

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    .line 2681
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Landroid/accounts/Account;

    .line 2682
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const/4 v8, 0x0

    .line 2683
    invoke-virtual {p0, v0, v7, v6, v8}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b

    .line 2686
    :cond_84
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/TokenCache;->remove(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    monitor-exit v5
    :try_end_8c
    .catchall {:try_start_67 .. :try_end_8c} :catchall_91

    .line 2688
    :try_start_8c
    monitor-exit v3
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_9b

    .line 2690
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_91
    move-exception p0

    .line 2687
    :try_start_92
    monitor-exit v5
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_91

    :try_start_93
    throw p0

    :catchall_94
    move-exception p0

    .line 2677
    iget-object p1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2678
    throw p0

    :catchall_9b
    move-exception p0

    .line 2688
    monitor-exit v3
    :try_end_9d
    .catchall {:try_start_93 .. :try_end_9d} :catchall_9b

    :try_start_9d
    throw p0
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_9e

    :catchall_9e
    move-exception p0

    .line 2690
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2691
    throw p0
.end method

.method public final invalidateAuthTokenLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/accounts/AccountManagerService$UserAccounts;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2697
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2698
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/accounts/AccountsDb;->findAuthtokenForAllAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    .line 2701
    :goto_b
    :try_start_b
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    .line 2702
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 2703
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 2704
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2705
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, v0}, Lcom/android/server/accounts/AccountsDb;->deleteAuthToken(Ljava/lang/String;)Z

    .line 2706
    new-instance v0, Landroid/accounts/Account;

    invoke-direct {v0, v1, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catchall {:try_start_b .. :try_end_31} :catchall_36

    goto :goto_b

    .line 2709
    :cond_32
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_36
    move-exception p0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2710
    throw p0
.end method

.method public final isAccountManagedByCaller(Ljava/lang/String;II)Z
    .registers 4

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 5980
    :cond_4
    invoke-virtual {p0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getTypesManagedByCaller(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isAccountPresentForCaller(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 6016
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    .line 6017
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    array-length p2, p0

    move v0, v1

    :goto_1b
    if-ge v0, p2, :cond_2c

    aget-object v2, p0, v0

    .line 6018
    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_2c
    return v1
.end method

.method public final isAccountVisibleToCaller(Ljava/lang/String;IILjava/lang/String;)Z
    .registers 5

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    .line 5899
    :cond_4
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->getTypesVisibleToCaller(IILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 5900
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isCredentialsUpdateSuggested(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 19

    move-object/from16 v0, p1

    move-object/from16 v10, p2

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 4184
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 4185
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCredentialsUpdateSuggested: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4187
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4188
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4185
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    if-eqz v0, :cond_8a

    if-eqz v10, :cond_82

    .line 4196
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_79

    .line 4200
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4201
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v12

    move-object v2, p0

    .line 4203
    :try_start_55
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 4204
    new-instance v14, Lcom/android/server/accounts/AccountManagerService$15;

    iget-object v5, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v4, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-direct/range {v1 .. v11}, Lcom/android/server/accounts/AccountManagerService$15;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZLandroid/accounts/Account;Ljava/lang/String;)V

    .line 4263
    invoke-virtual {v14}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_70
    .catchall {:try_start_55 .. :try_end_70} :catchall_74

    .line 4265
    invoke-static {v12, v13}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_74
    move-exception v0

    invoke-static {v12, v13}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4266
    throw v0

    .line 4197
    :cond_79
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "status token is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4194
    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4191
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isCrossUser(II)Z
    .registers 5

    .line 1731
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    if-eqz p2, :cond_19

    .line 1733
    :cond_d
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1734
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-nez v0, :cond_1a

    :cond_19
    return v1

    .line 1739
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p2, v0, :cond_2f

    const/16 p2, 0x3e8

    if-eq p1, p2, :cond_2f

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 1741
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2f

    const/4 v1, 0x1

    :cond_2f
    return v1
.end method

.method public final isLocalUnlockedUser(I)Z
    .registers 3

    .line 2063
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2064
    :try_start_3
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 2065
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final varargs isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z
    .registers 13

    .line 5774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 5776
    :try_start_5
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 5777
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    .line 5778
    array-length v5, p3

    move v6, v2

    :goto_11
    if-ge v6, v5, :cond_37

    aget-object v7, p3, v6

    .line 5779
    invoke-interface {v4, v7, p1, p2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_2f

    .line 5782
    invoke-static {v7}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2a

    .line 5783
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v8, v7, v3, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v7
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_28} :catch_37
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_28} :catch_37
    .catchall {:try_start_5 .. :try_end_28} :catchall_32

    if-nez v7, :cond_2f

    .line 5792
    :cond_2a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :cond_2f
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5793
    throw p0

    .line 5792
    :catch_37
    :cond_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public final isPreOApplication(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    .line 794
    :try_start_1
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_1f

    .line 797
    :try_start_5
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1a

    .line 799
    :try_start_c
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_19

    .line 803
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 p1, 0x1a

    if-ge p0, p1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v3

    :cond_19
    :goto_19
    return v0

    :catchall_1a
    move-exception p0

    .line 799
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 800
    throw p0
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1f} :catch_1f

    :catch_1f
    move-exception p0

    .line 808
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isPreOApplication#Package not found "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final isPrivileged(I)Z
    .registers 11

    .line 5830
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5832
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_63

    const-string v3, "AccountManagerService"

    const/4 v4, 0x0

    if-nez v2, :cond_27

    .line 5834
    :try_start_f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No packages for callingUid "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_f .. :try_end_23} :catchall_63

    .line 5851
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 5837
    :cond_27
    :try_start_27
    array-length p1, v2

    move v5, v4

    :goto_29
    if-ge v5, p1, :cond_5f

    aget-object v6, v2, v5
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_63

    .line 5839
    :try_start_2d
    iget-object v7, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 5840
    invoke-virtual {v7, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_5c

    .line 5841
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I
    :try_end_39
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_39} :catch_42
    .catchall {:try_start_2d .. :try_end_39} :catchall_63

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_5c

    .line 5851
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catch_42
    move-exception v6

    .line 5847
    :try_start_43
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isPrivileged#Package not found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_43 .. :try_end_5c} :catchall_63

    :cond_5c
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 5851
    :cond_5f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_63
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5852
    throw p0
.end method

.method public final isProfileOwner(I)Z
    .registers 3

    .line 6152
    const-class p0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 6153
    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz p0, :cond_18

    .line 6155
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_18

    :cond_16
    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method public final isSpecialPackageKey(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "android:accounts:key_legacy_visible"

    .line 1107
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    const-string p0, "android:accounts:key_legacy_not_visible"

    .line 1108
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final isSystemUid(I)Z
    .registers 12

    .line 6078
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6080
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_52

    const-string v3, "AccountManagerService"

    const/4 v4, 0x0

    if-eqz v2, :cond_3a

    .line 6082
    :try_start_f
    array-length p1, v2

    move v5, v4

    :goto_11
    if-ge v5, p1, :cond_4e

    aget-object v6, v2, v5
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_52

    const/4 v7, 0x1

    .line 6084
    :try_start_16
    iget-object v8, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 6085
    invoke-virtual {v8, v6, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_37

    .line 6086
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v8, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_22} :catch_29
    .catchall {:try_start_16 .. :try_end_22} :catchall_52

    and-int/2addr v6, v7

    if-eqz v6, :cond_37

    .line 6099
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catch_29
    move-exception v8

    :try_start_2a
    const-string v9, "Could not find package [%s]"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v6, v7, v4

    .line 6092
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_37
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 6096
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No known packages with uid "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_2a .. :try_end_4e} :catchall_52

    .line 6099
    :cond_4e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_52
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6100
    throw p0
.end method

.method public final isVisible(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_8

    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :cond_8
    :goto_8
    return p0
.end method

.method public final logAddAccountExplicitlyMetrics(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xcb

    .line 2018
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2020
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2021
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2022
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->findPackagesPerVisibility(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object p0

    .line 2019
    invoke-virtual {v0, p2, p1, p0}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 2023
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method public final logAddAccountMetrics(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const/16 p0, 0xca

    .line 3631
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 3633
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 3634
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 3635
    invoke-static {p4}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    if-nez p3, :cond_23

    const-string p1, ""

    goto :goto_29

    :cond_23
    const-string p1, ";"

    .line 3638
    invoke-static {p1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_29
    const/4 p2, 0x3

    aput-object p1, v0, p2

    .line 3632
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 3639
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method public final logGetAuthTokenMetrics(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/16 p0, 0xcc

    .line 3358
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 3360
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3361
    invoke-static {p2}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 3359
    invoke-virtual {p0, v0}, Landroid/app/admin/DevicePolicyEventLogger;->setStrings([Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 3362
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method public final logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    .line 5528
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    return-void
.end method

.method public final logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 13

    .line 5540
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method public final logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    .registers 18

    move-object/from16 v6, p5

    .line 5597
    iget-object v0, v6, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->reserveDebugDbInsertionPoint()J

    move-result-wide v8

    const-wide/16 v0, -0x1

    cmp-long v0, v8, v0

    if-eqz v0, :cond_22

    .line 5599
    new-instance v10, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/server/accounts/AccountManagerService$1LogRecordTask;-><init>(Lcom/android/server/accounts/AccountManagerService;Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;IJ)V

    move-object v0, p0

    .line 5601
    iget-object v0, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method

.method public final logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v5, p1

    move v6, p4

    .line 5532
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    return-void
.end method

.method public final needToStartChooseAccountActivity([Landroid/accounts/Account;Ljava/lang/String;)Z
    .registers 6

    .line 4878
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_6

    return v1

    .line 4879
    :cond_6
    array-length v0, p1

    if-le v0, v2, :cond_a

    return v2

    .line 4880
    :cond_a
    aget-object p1, p1, v1

    .line 4881
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 4882
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_20

    return v2

    :cond_20
    return v1
.end method

.method public final newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 10

    .line 3431
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p6, :cond_10

    const/high16 p6, 0x10000000

    .line 3437
    invoke-virtual {v0, p6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3439
    :cond_10
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p5, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$NotificationId;->mTag:Ljava/lang/String;

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_21

    goto :goto_23

    :cond_21
    const-string p2, ""

    .line 3440
    :goto_23
    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3439
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "account"

    .line 3441
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "authTokenType"

    .line 3442
    invoke-virtual {v0, p0, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "response"

    .line 3443
    invoke-virtual {v0, p0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p0, "uid"

    .line 3444
    invoke-virtual {v0, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method public final newRequestAccountAccessIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;
    .registers 12

    .line 4430
    new-instance v4, Landroid/accounts/AccountAuthenticatorResponse;

    new-instance v0, Lcom/android/server/accounts/AccountManagerService$17;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService$17;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/os/RemoteCallback;)V

    invoke-direct {v4, v0}, Landroid/accounts/AccountAuthenticatorResponse;-><init>(Landroid/accounts/IAccountAuthenticatorResponse;)V

    const-string v5, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;Ljava/lang/String;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public final notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 5

    .line 1025
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.VISIBLE_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x40000000    # 2.0f

    .line 1027
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1028
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p2}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onAccountAccessed(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5044
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_d

    return-void

    .line 5047
    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 5048
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 5050
    :try_start_15
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/server/accounts/AccountManagerService;->getAccounts(ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    array-length v4, v1

    const/4 v5, 0x0

    :goto_21
    if-ge v5, v4, :cond_3f

    aget-object v6, v1, v5

    .line 5051
    invoke-virtual {v6}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v7, 0x0

    .line 5055
    invoke-virtual {p0, v6, v7, v0}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_3c

    const-string v7, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    const/4 v8, 0x1

    .line 5056
    invoke-virtual {p0, v6, v7, v0, v8}, Lcom/android/server/accounts/AccountManagerService;->updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    :try_end_3c
    .catchall {:try_start_15 .. :try_end_3c} :catchall_43

    :cond_3c
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    .line 5062
    :cond_3f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_43
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5063
    throw p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 5606
    invoke-virtual {p0}, Landroid/accounts/IAccountManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "AccountManagerService"

    if-nez p2, :cond_f

    .line 3041
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string/jumbo v2, "the result is unexpectedly null"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    const/4 v1, 0x2

    .line 3043
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 3044
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " calling onResult() on response "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    :cond_35
    :try_start_35
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_38
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_45

    :catch_39
    move-exception p0

    .line 3052
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p1, "failure while notifying response"

    .line 3053
    invoke-static {v0, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_45
    :goto_45
    return-void
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V
    .registers 4

    .line 1555
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_22

    .line 1557
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onServiceChanged: ignore removed user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1560
    :cond_22
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;IZ)V
    .registers 4

    .line 183
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;IZ)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 5070
    new-instance v0, Lcom/android/server/accounts/AccountManagerServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/accounts/AccountManagerServiceShellCommand;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "AccountManagerService"

    .line 1132
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1133
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    if-nez v2, :cond_4d

    .line 1134
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 1135
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 1136
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6, v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "MARs restricts callerPid died to async AccountManagerService API , uid = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " pkgName = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 1143
    :cond_4d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/accounts/IAccountManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_51} :catch_52

    return p0

    :catch_52
    move-exception p0

    .line 1147
    instance-of p1, p0, Ljava/lang/SecurityException;

    if-nez p1, :cond_60

    instance-of p1, p0, Ljava/lang/IllegalArgumentException;

    if-nez p1, :cond_60

    const-string p1, "Account Manager Crash"

    .line 1148
    invoke-static {v0, p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1150
    :cond_60
    throw p0
.end method

.method public onUnlockUser(I)V
    .registers 5

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    .line 1524
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v0, "AccountManagerService"

    .line 1525
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    :cond_20
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1528
    :try_start_23
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1529
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_38

    if-ge p1, v2, :cond_2d

    return-void

    .line 1531
    :cond_2d
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v1, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/accounts/AccountManagerService;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_38
    move-exception p0

    .line 1529
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public onUserReset(I)V
    .registers 5

    .line 6746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserReset is called for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_23

    .line 6752
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountDB(I)V

    goto :goto_37

    .line 6754
    :cond_23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to remove accounts db for user -"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    return-void
.end method

.method public onUserUnlocked(Landroid/content/Intent;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    .line 1520
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->onUnlockUser(I)V

    return-void
.end method

.method public final packageExistsForUser(Ljava/lang/String;I)Z
    .registers 5

    .line 1091
    :try_start_0
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4} :catch_13

    .line 1093
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    const/4 p0, 0x1

    .line 1096
    :try_start_a
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_e
    move-exception p0

    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 1097
    throw p0
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_13} :catch_13

    :catch_13
    const/4 p0, 0x0

    return p0
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 2769
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 2770
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "peekAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2774
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2771
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const-string v3, "account cannot be null"

    .line 2776
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "authTokenType cannot be null"

    .line 2777
    invoke-static {p2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2778
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2779
    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 2786
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v2

    if-nez v2, :cond_78

    .line 2787
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Authtoken not available - user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data is locked. callingUid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 2791
    :cond_78
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 2793
    :try_start_7c
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v2

    .line 2794
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_88

    .line 2796
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_88
    move-exception p0

    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2797
    throw p0

    :cond_8d
    new-array p0, v2, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 2782
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p2

    const/4 p2, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, p2

    const-string/jumbo p1, "uid %s cannot peek the authtokens associated with accounts of type: %s"

    .line 2780
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2784
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;II)Z
    .registers 11

    .line 5858
    invoke-static {p3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Access to "

    const/4 v3, 0x2

    const-string v4, "AccountManagerService"

    const/16 v5, 0x3e8

    if-ne v0, v5, :cond_2c

    .line 5859
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2b

    .line 5860
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " granted calling uid is system"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return v1

    .line 5865
    :cond_2c
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->isPrivileged(I)Z

    move-result v0

    const-string v5, " granted calling uid "

    if-eqz v0, :cond_58

    .line 5866
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_57

    .line 5867
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " privileged"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_57
    return v1

    :cond_58
    if-eqz p1, :cond_86

    .line 5872
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result p4

    if-eqz p4, :cond_86

    .line 5873
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_85

    .line 5874
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " manages the account"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    return v1

    :cond_86
    if-eqz p1, :cond_b2

    .line 5879
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_b2

    .line 5880
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_b1

    .line 5881
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " user granted access"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    return v1

    .line 5887
    :cond_b2
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_d2

    .line 5888
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not granted for uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d2
    const/4 p0, 0x0

    return p0
.end method

.method public final purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 9

    .line 1456
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1457
    :try_start_3
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_55

    .line 1458
    :try_start_6
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->findAllUidGrants()Ljava/util/List;

    move-result-object v2

    .line 1459
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1460
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v4, 0x0

    :goto_2b
    if-eqz v4, :cond_2e

    goto :goto_10

    :cond_2e
    const-string v4, "AccountManagerService"

    .line 1464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleting grants for UID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " because its package is no longer installed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v3}, Lcom/android/server/accounts/AccountsDb;->deleteGrantsByUid(I)Z

    goto :goto_10

    .line 1468
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_6 .. :try_end_50} :catchall_52

    .line 1469
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_55

    return-void

    :catchall_52
    move-exception p0

    .line 1468
    :try_start_53
    monitor-exit v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_52

    :try_start_54
    throw p0

    :catchall_55
    move-exception p0

    .line 1469
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public final purgeOldGrantsAll()V
    .registers 4

    .line 1448
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1449
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 1450
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->purgeOldGrants(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1452
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_4 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final purgeUserData(I)V
    .registers 5

    .line 1502
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1503
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 1504
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1505
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1506
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 1507
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_35

    if-eqz v1, :cond_34

    .line 1509
    iget-object p0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1510
    :try_start_1e
    iget-object p1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_31

    .line 1511
    :try_start_21
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->closeDebugStatement()V

    .line 1512
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->close()V

    .line 1513
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2e

    .line 1514
    :try_start_2c
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_31

    goto :goto_34

    :catchall_2e
    move-exception v0

    .line 1513
    :try_start_2f
    monitor-exit p1
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    throw v0

    :catchall_31
    move-exception p1

    .line 1514
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_31

    throw p1

    :cond_34
    :goto_34
    return-void

    :catchall_35
    move-exception p0

    .line 1507
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public readAuthTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 6488
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p0

    .line 6489
    :try_start_3
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_17

    .line 6491
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0

    return-object p1

    .line 6493
    :cond_17
    monitor-exit p0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_46

    .line 6495
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6496
    :try_start_1b
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_43

    .line 6497
    :try_start_1e
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_37

    .line 6500
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v1

    .line 6501
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6503
    :cond_37
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_1e .. :try_end_3e} :catchall_40

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_43

    return-object p1

    :catchall_40
    move-exception p1

    .line 6504
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw p1

    :catchall_43
    move-exception p0

    .line 6505
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_43

    throw p0

    :catchall_46
    move-exception p1

    .line 6493
    :try_start_47
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p1
.end method

.method public readCachedTokenInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/server/accounts/TokenCache$Value;
    .registers 6

    .line 6464
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p0

    .line 6465
    :try_start_3
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/accounts/TokenCache;->get(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/server/accounts/TokenCache$Value;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    .line 6467
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public final readPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    .line 1593
    :cond_4
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result p0

    if-nez p0, :cond_2e

    const-string p0, "AccountManagerService"

    .line 1594
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Password is not available - user "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " data is locked"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1598
    :cond_2e
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1599
    :try_start_31
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_44

    .line 1600
    :try_start_34
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v1, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 1601
    invoke-virtual {p1, v1, p2}, Lcom/android/server/accounts/AccountsDb;->findAccountPasswordByNameAndType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_41

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_44

    return-object p1

    :catchall_41
    move-exception p1

    .line 1602
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    :try_start_43
    throw p1

    :catchall_44
    move-exception p1

    .line 1603
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_43 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public final readPreviousNameInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Ljava/lang/String;
    .registers 6

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 1628
    :cond_4
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p0

    .line 1629
    :try_start_7
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_37

    .line 1630
    :try_start_a
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetpreviousNameCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicReference;

    if-nez v1, :cond_2b

    .line 1632
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountPreviousName(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v1

    .line 1633
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 1634
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetpreviousNameCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_a .. :try_end_29} :catchall_34

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_37

    return-object v1

    .line 1637
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_34

    :try_start_32
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_37

    return-object p1

    :catchall_34
    move-exception p1

    .line 1639
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    :try_start_36
    throw p1

    :catchall_37
    move-exception p1

    .line 1640
    monitor-exit p0
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public final readUserDataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 6511
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter p0

    .line 6512
    :try_start_3
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 6513
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_40

    if-nez v0, :cond_39

    .line 6516
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter p0

    .line 6517
    :try_start_13
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_36

    .line 6518
    :try_start_16
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2f

    .line 6521
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object v1

    .line 6522
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6524
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_16 .. :try_end_30} :catchall_33

    .line 6525
    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_36

    move-object v0, v1

    goto :goto_39

    :catchall_33
    move-exception p1

    .line 6524
    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    :try_start_35
    throw p1

    :catchall_36
    move-exception p1

    .line 6525
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_36

    throw p1

    .line 6527
    :cond_39
    :goto_39
    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :catchall_40
    move-exception p1

    .line 6513
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p1
.end method

.method public registerAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 937
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 938
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 940
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 941
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 943
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 944
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 946
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 947
    throw p0
.end method

.method public final registerAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 9

    .line 952
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    monitor-enter p0

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 955
    :try_start_8
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 957
    :cond_c
    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_42

    aget-object v2, p1, v1

    .line 958
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    if-nez v3, :cond_2a

    .line 960
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 961
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    :cond_2a
    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/4 v4, 0x1

    if-eqz v2, :cond_38

    .line 964
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v4, v2

    :cond_38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 966
    :cond_42
    monitor-exit p0

    return-void

    :catchall_44
    move-exception p1

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_44

    throw p1
.end method

.method public removeAccountAsUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;ZI)V
    .registers 18

    move-object v0, p0

    move-object v8, p1

    move-object v9, p2

    move/from16 v1, p4

    .line 2332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v2, "AccountManagerService"

    const/4 v3, 0x2

    .line 2333
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string v2, "AccountManagerService"

    .line 2334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeAccount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", response "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", caller\'s uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2337
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", for user id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2334
    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4d
    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v9, :cond_53

    move v5, v4

    goto :goto_54

    :cond_53
    move v5, v2

    :goto_54
    const-string v6, "account cannot be null"

    .line 2340
    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v8, :cond_5d

    move v5, v4

    goto :goto_5e

    :cond_5d
    move v5, v2

    :goto_5e
    const-string/jumbo v6, "response cannot be null"

    .line 2341
    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 2344
    invoke-virtual {p0, v7, v1}, Lcom/android/server/accounts/AccountManagerService;->isCrossUser(II)Z

    move-result v5

    if-nez v5, :cond_14e

    .line 2356
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 2357
    iget-object v6, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v10

    invoke-virtual {p0, v6, v7, v10}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 2358
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v6

    if-nez v6, :cond_a0

    .line 2359
    invoke-virtual {p0, v7}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v6

    if-eqz v6, :cond_87

    goto :goto_a0

    :cond_87
    const-string/jumbo v0, "uid %s cannot remove accounts of type: %s"

    new-array v1, v3, [Ljava/lang/Object;

    .line 2362
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 2360
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2364
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2366
    :cond_a0
    :goto_a0
    invoke-virtual {p0, v1, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v2

    if-nez v2, :cond_ae

    const/16 v0, 0x64

    :try_start_a8
    const-string v1, "User cannot modify accounts"

    .line 2368
    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_a8 .. :try_end_ad} :catch_ad

    :catch_ad
    return-void

    :cond_ae
    :try_start_ae
    const-string v2, "device_account_policy"

    .line 2379
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;

    move-result-object v2

    if-eqz v2, :cond_cd

    .line 2380
    iget-object v3, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v6, v9, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-interface {v2, v3, v6, v4, v1}, Lcom/samsung/android/knox/accounts/IDeviceAccountPolicy;->isAccountRemovalAllowedAsUser(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v2

    if-eqz v2, :cond_c5

    goto :goto_cd

    .line 2381
    :cond_c5
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Security policy blocks this account removal"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_cd
    .catch Landroid/os/RemoteException; {:try_start_ae .. :try_end_cd} :catch_cd

    .line 2388
    :catch_cd
    :cond_cd
    :goto_cd
    iget-object v2, v9, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v7}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_dd

    const/16 v0, 0x65

    :try_start_d7
    const-string v1, "User cannot modify accounts of this type (policy)."

    .line 2390
    invoke-interface {p1, v0, v1}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_dc
    .catch Landroid/os/RemoteException; {:try_start_d7 .. :try_end_dc} :catch_dc

    :catch_dc
    return-void

    .line 2396
    :cond_dd
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v10

    .line 2397
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v12

    .line 2398
    invoke-virtual {p0, v12, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v1

    invoke-virtual {p0, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2399
    invoke-static {v12}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v6

    monitor-enter v6

    .line 2401
    :try_start_f1
    invoke-static {v12}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_fd
    :goto_fd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_123

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2402
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 2403
    invoke-static {v12}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2404
    invoke-virtual {p0, v2, v5}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    goto :goto_fd

    .line 2407
    :cond_123
    monitor-exit v6
    :try_end_124
    .catchall {:try_start_f1 .. :try_end_124} :catchall_14b

    .line 2408
    iget-object v1, v12, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4

    .line 2409
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string v3, "accounts"

    move-object v1, p0

    move-object v6, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2416
    :try_start_133
    new-instance v7, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v12

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService$RemoveAccountSession;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    invoke-virtual {v7}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_142
    .catchall {:try_start_133 .. :try_end_142} :catchall_146

    .line 2418
    invoke-static {v10, v11}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_146
    move-exception v0

    invoke-static {v10, v11}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2419
    throw v0

    :catchall_14b
    move-exception v0

    .line 2407
    :try_start_14c
    monitor-exit v6
    :try_end_14d
    .catchall {:try_start_14c .. :try_end_14d} :catchall_14b

    throw v0

    .line 2345
    :cond_14e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v5, "User %s tying remove account for %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 2348
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    .line 2349
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    .line 2346
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeAccountDB(I)V
    .registers 6

    const/4 v0, 0x1

    if-ge p1, v0, :cond_4

    return-void

    .line 6763
    :cond_4
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6764
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    .line 6765
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 6766
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 6767
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 6768
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_70

    if-eqz v1, :cond_2f

    .line 6770
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6771
    :try_start_25
    iget-object v1, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->close()V

    .line 6772
    monitor-exit v0

    goto :goto_2f

    :catchall_2c
    move-exception p0

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2c

    throw p0

    :cond_2f
    :goto_2f
    const-string v0, "AccountManagerService"

    .line 6774
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing database files for user "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6775
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {v1, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getDeDatabaseName(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6777
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    .line 6779
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    if-eqz v0, :cond_5b

    if-eqz v2, :cond_6f

    .line 6781
    :cond_5b
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mInjector:Lcom/android/server/accounts/AccountManagerService$Injector;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService$Injector;->getCeDatabaseName(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6782
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_6f

    .line 6783
    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->deleteDbFileWarnIfFailed(Ljava/io/File;)V

    :cond_6f
    return-void

    :catchall_70
    move-exception p0

    .line 6768
    :try_start_71
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method

.method public removeAccountExplicitly(Landroid/accounts/Account;)Z
    .registers 11

    .line 2424
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    .line 2425
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2426
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAccountExplicitly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2428
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2426
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2430
    :cond_36
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    if-nez p1, :cond_47

    const-string p0, "account is null"

    .line 2436
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 2438
    :cond_47
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0, v7, v2}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_74

    .line 2445
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v8

    .line 2446
    iget-object v0, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 2447
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string v2, "accounts"

    move-object v0, p0

    move-object v5, v8

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 2453
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v0

    .line 2455
    :try_start_67
    invoke-virtual {p0, v8, p1, v7}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    move-result p0
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_6f

    .line 2457
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_6f
    move-exception p0

    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2458
    throw p0

    :cond_74
    new-array p0, v1, [Ljava/lang/Object;

    .line 2441
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v3

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, v0

    const-string/jumbo p1, "uid %s cannot explicitly remove accounts of type: %s"

    .line 2439
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2443
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V
    .registers 8

    .line 6250
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    if-eqz p0, :cond_44

    .line 6252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6253
    array-length v1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_23

    aget-object v3, p0, v2

    .line 6254
    invoke-virtual {v3, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    .line 6255
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 6258
    :cond_23
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_31

    .line 6259
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_44

    .line 6261
    :cond_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/accounts/Account;

    .line 6262
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/accounts/Account;

    .line 6263
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6266
    :cond_44
    :goto_44
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6267
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6268
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetpreviousNameCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6269
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6271
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    return-void
.end method

.method public removeAccountInternal(Landroid/accounts/Account;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 2515
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    return-void
.end method

.method public final removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 2520
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v2, "AccountManagerService"

    .line 2522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " while user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is still locked. CE data will be removed later"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_3b
    iget-object v9, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2527
    :try_start_3e
    iget-object v10, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_21d

    .line 2528
    :try_start_41
    invoke-virtual {v0, v8, v7}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    .line 2531
    invoke-virtual {v0, v8, v7}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v3

    .line 2532
    iget-object v4, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_4e
    .catchall {:try_start_41 .. :try_end_4e} :catchall_21a

    .line 2537
    :try_start_4e
    iget-object v4, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v8}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4

    const-wide/16 v11, 0x0

    cmp-long v6, v4, v11

    const/4 v13, 0x0

    if-ltz v6, :cond_64

    .line 2539
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z

    move-result v6

    move/from16 v22, v6

    goto :goto_66

    :cond_64
    move/from16 v22, v13

    :goto_66
    if-eqz v1, :cond_77

    .line 2544
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v8}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v14

    cmp-long v6, v14, v11

    if-ltz v6, :cond_77

    .line 2546
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v14, v15}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)Z

    .line 2549
    :cond_77
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_7c
    .catchall {:try_start_4e .. :try_end_7c} :catchall_213

    .line 2551
    :try_start_7c
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    if-eqz v22, :cond_ee

    .line 2554
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2556
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 2555
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8e
    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_be

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 2557
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_b4

    .line 2558
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8e

    .line 2560
    :cond_b4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_8e

    .line 2565
    :cond_be
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2566
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_dd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2567
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v6

    invoke-virtual {v0, v8, v3, v6}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_c9

    :cond_dd
    if-eqz v1, :cond_e2

    .line 2569
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    goto :goto_e4

    .line 2570
    :cond_e2
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE_DE:Ljava/lang/String;

    :goto_e4
    move-object v2, v1

    const-string v3, "accounts"

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    .line 2571
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2573
    :cond_ee
    monitor-exit v10
    :try_end_ef
    .catchall {:try_start_7c .. :try_end_ef} :catchall_21a

    .line 2574
    :try_start_ef
    monitor-exit v9
    :try_end_f0
    .catchall {:try_start_ef .. :try_end_f0} :catchall_21d

    .line 2575
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2577
    :try_start_f4
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 2578
    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v4

    if-eqz v4, :cond_12b

    .line 2580
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v4

    .line 2581
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2582
    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v6

    if-eqz v6, :cond_128

    iget v6, v5, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v3, v6, :cond_128

    .line 2583
    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    move/from16 v6, p3

    invoke-virtual {v0, v8, v5, v6}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    :try_end_127
    .catchall {:try_start_f4 .. :try_end_127} :catchall_20e

    goto :goto_10a

    :cond_128
    move/from16 v6, p3

    goto :goto_10a

    .line 2588
    :cond_12b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v22, :cond_17f

    .line 2592
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 2594
    :try_start_135
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_141
    :goto_141
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 2595
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v4}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_141

    const-string v4, "com.android.AccountManager.ACCOUNT_ACCESS_TOKEN_TYPE"

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 2596
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_141

    .line 2597
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2598
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v5, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v5, v0, v8, v3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;I)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_141

    .line 2602
    :cond_17a
    monitor-exit v1

    goto :goto_17f

    :catchall_17c
    move-exception v0

    monitor-exit v1
    :try_end_17e
    .catchall {:try_start_135 .. :try_end_17e} :catchall_17c

    throw v0

    .line 2606
    :cond_17f
    :goto_17f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2608
    :try_start_183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2609
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v22, :cond_199

    const-string v3, " succeeded"

    goto :goto_19b

    :cond_199
    const-string v3, " failed"

    .line 2610
    :goto_19b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v14, 0x5

    const/4 v15, 0x4

    .line 2614
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string v18, "AccountManagerService"

    const-string v20, ""

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v21

    move/from16 v16, v22

    .line 2611
    invoke-static/range {v14 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1b5
    .catchall {:try_start_183 .. :try_end_1b5} :catchall_209

    .line 2620
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2625
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    .line 2628
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2630
    :try_start_1bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2631
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v22, :cond_1d5

    const-string v3, " succeeded"

    goto :goto_1d7

    :cond_1d5
    const-string v3, " failed"

    .line 2632
    :goto_1d7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v14, 0x5

    const/4 v15, 0x4

    .line 2636
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string v18, "AccountManagerService"

    const-string v20, ""

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v21

    move/from16 v16, v22

    .line 2633
    invoke-static/range {v14 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1f1
    .catchall {:try_start_1bf .. :try_end_1f1} :catchall_204

    .line 2642
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->getInstance()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_203

    .line 2650
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    iget-object v2, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/pm/PersonaManagerService;->knoxAnalyticsAccountsChanged(ILjava/lang/String;Z)V

    :cond_203
    return v22

    :catchall_204
    move-exception v0

    .line 2642
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2643
    throw v0

    :catchall_209
    move-exception v0

    .line 2620
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2621
    throw v0

    :catchall_20e
    move-exception v0

    .line 2588
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2589
    throw v0

    :catchall_213
    move-exception v0

    .line 2551
    :try_start_214
    iget-object v1, v7, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2552
    throw v0

    :catchall_21a
    move-exception v0

    .line 2573
    monitor-exit v10
    :try_end_21c
    .catchall {:try_start_214 .. :try_end_21c} :catchall_21a

    :try_start_21c
    throw v0

    :catchall_21d
    move-exception v0

    .line 2574
    monitor-exit v9
    :try_end_21f
    .catchall {:try_start_21c .. :try_end_21f} :catchall_21d

    throw v0
.end method

.method public removeSharedAccountAsUser(Landroid/accounts/Account;I)Z
    .registers 4

    .line 4811
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->removeSharedAccountAsUser(Landroid/accounts/Account;II)Z

    move-result p0

    return p0
.end method

.method public final removeSharedAccountAsUser(Landroid/accounts/Account;II)Z
    .registers 12

    .line 4815
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p2

    .line 4816
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p2

    .line 4817
    iget-object v0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 4818
    iget-object v0, p2, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->deleteSharedAccount(Landroid/accounts/Account;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 4820
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_REMOVE:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4822
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    :cond_24
    return v7
.end method

.method public final removeVisibilityValuesForPackage(Ljava/lang/String;)V
    .registers 10

    .line 1473
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1476
    :cond_7
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1477
    :try_start_a
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_5e

    .line 1479
    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_60

    .line 1481
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I
    :try_end_24
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1b .. :try_end_24} :catch_25
    .catchall {:try_start_1b .. :try_end_24} :catchall_60

    goto :goto_55

    .line 1484
    :catch_25
    :try_start_25
    iget-object v4, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, p1}, Lcom/android/server/accounts/AccountsDb;->deleteAccountVisibilityForPackage(Ljava/lang/String;)Z

    .line 1485
    iget-object v4, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_60

    .line 1486
    :try_start_2d
    iget-object v5, v3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_5b

    .line 1487
    :try_start_30
    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_50

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/accounts/Account;

    .line 1489
    invoke-virtual {p0, v7, v3}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7

    .line 1490
    invoke-interface {v7, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    .line 1492
    :cond_50
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 1493
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_58

    .line 1494
    :try_start_54
    monitor-exit v4
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_5b

    :goto_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :catchall_58
    move-exception p0

    .line 1493
    :try_start_59
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw p0

    :catchall_5b
    move-exception p0

    .line 1494
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw p0

    .line 1497
    :cond_5e
    monitor-exit v0

    return-void

    :catchall_60
    move-exception p0

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_60

    throw p0
.end method

.method public renameAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 10

    .line 2180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 2181
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2182
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "renameAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2184
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2182
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    if-eqz p2, :cond_bd

    if-eqz p3, :cond_59

    .line 2187
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xc8

    if-gt v3, v4, :cond_4b

    goto :goto_59

    :cond_4b
    const-string/jumbo p0, "renameAccount failed - account name longer than 200"

    .line 2188
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account name longer than 200"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2191
    :cond_59
    :goto_59
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 2192
    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4, v0, v3}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_a2

    .line 2199
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v4

    .line 2201
    :try_start_69
    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2202
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object p0

    .line 2203
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "authAccount"

    .line 2204
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "accountType"

    .line 2205
    iget-object v0, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "accountAccessId"

    .line 2207
    invoke-virtual {p0}, Landroid/accounts/Account;->getAccessId()Ljava/lang/String;

    move-result-object p0

    .line 2206
    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_69 .. :try_end_8d} :catchall_9d

    .line 2209
    :try_start_8d
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_90
    .catch Landroid/os/RemoteException; {:try_start_8d .. :try_end_90} :catch_91
    .catchall {:try_start_8d .. :try_end_90} :catchall_9d

    goto :goto_99

    :catch_91
    move-exception p0

    .line 2211
    :try_start_92
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catchall {:try_start_92 .. :try_end_99} :catchall_9d

    .line 2214
    :goto_99
    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_9d
    move-exception p0

    invoke-static {v4, v5}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2215
    throw p0

    :cond_a2
    new-array p0, v2, [Ljava/lang/Object;

    const/4 p1, 0x0

    .line 2195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p0, p1

    const/4 p1, 0x1

    iget-object p2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p2, p0, p1

    const-string/jumbo p1, "uid %s cannot rename accounts of type: %s"

    .line 2193
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2197
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2186
    :cond_bd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;
    .registers 14

    .line 2231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 2230
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2233
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 2235
    :try_start_15
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 2236
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2237
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetcredentialsPermissionNotificationIds(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accounts/AccountManagerService$NotificationId;

    .line 2238
    new-instance v3, Landroid/os/UserHandle;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    goto :goto_21

    .line 2241
    :cond_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_15 .. :try_end_51} :catchall_179

    .line 2242
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2243
    :try_start_54
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_57
    .catchall {:try_start_54 .. :try_end_57} :catchall_176

    .line 2245
    :try_start_57
    invoke-virtual {p0, p2, p1}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v2

    .line 2246
    iget-object v3, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V

    .line 2247
    new-instance v3, Landroid/accounts/Account;

    iget-object v4, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {v3, p3, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catchall {:try_start_57 .. :try_end_67} :catchall_173

    .line 2249
    :try_start_67
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v3}, Lcom/android/server/accounts/AccountsDb;->findCeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-ltz v4, :cond_84

    const-string p0, "AccountManagerService"

    const-string/jumbo p2, "renameAccount failed - account with new name already exists"

    .line 2250
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_67 .. :try_end_7c} :catchall_16c

    .line 2268
    :try_start_7c
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_82
    .catchall {:try_start_7c .. :try_end_82} :catchall_173

    :try_start_82
    monitor-exit v1
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_176

    return-object v5

    .line 2253
    :cond_84
    :try_start_84
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v8

    cmp-long v4, v8, v6

    if-ltz v4, :cond_15c

    .line 2255
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v8, v9, p3}, Lcom/android/server/accounts/AccountsDb;->renameCeAccount(JLjava/lang/String;)Z

    .line 2256
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v8, v9, p3, v6}, Lcom/android/server/accounts/AccountsDb;->renameDeAccount(JLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14c

    .line 2258
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_a2
    .catchall {:try_start_84 .. :try_end_a2} :catchall_16c

    .line 2268
    :try_start_a2
    iget-object v4, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2274
    invoke-virtual {p0, p1, v3}, Lcom/android/server/accounts/AccountManagerService;->insertAccountIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v3

    .line 2280
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 2281
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 2282
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .line 2283
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountFromCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)V

    .line 2288
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2290
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetpreviousNameCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/HashMap;

    move-result-object v4

    new-instance v5, Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v6, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2296
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    .line 2297
    invoke-virtual {p0, v4}, Lcom/android/server/accounts/AccountManagerService;->canHaveProfile(I)Z

    move-result v5

    if-eqz v5, :cond_121

    .line 2302
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v5

    .line 2303
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_105
    :goto_105
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_121

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 2304
    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    if-eqz v7, :cond_105

    iget v7, v6, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    if-ne v7, v4, :cond_105

    .line 2306
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p2, p3, v6}, Lcom/android/server/accounts/AccountManagerService;->renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    goto :goto_105

    .line 2311
    :cond_121
    invoke-virtual {p0, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2312
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2313
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_12f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_143

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2314
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    invoke-virtual {p0, p2, v2, v4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_12f

    .line 2317
    :cond_143
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    .line 2318
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    .line 2319
    monitor-exit v0
    :try_end_14a
    .catchall {:try_start_a2 .. :try_end_14a} :catchall_173

    .line 2320
    :try_start_14a
    monitor-exit v1
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_176

    return-object v3

    :cond_14c
    :try_start_14c
    const-string p0, "AccountManagerService"

    const-string/jumbo p2, "renameAccount failed"

    .line 2260
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_154
    .catchall {:try_start_14c .. :try_end_154} :catchall_16c

    .line 2268
    :try_start_154
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_15a
    .catchall {:try_start_154 .. :try_end_15a} :catchall_173

    :try_start_15a
    monitor-exit v1
    :try_end_15b
    .catchall {:try_start_15a .. :try_end_15b} :catchall_176

    return-object v5

    :cond_15c
    :try_start_15c
    const-string p0, "AccountManagerService"

    const-string/jumbo p2, "renameAccount failed - old account does not exist"

    .line 2264
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_164
    .catchall {:try_start_15c .. :try_end_164} :catchall_16c

    .line 2268
    :try_start_164
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    monitor-exit v0
    :try_end_16a
    .catchall {:try_start_164 .. :try_end_16a} :catchall_173

    :try_start_16a
    monitor-exit v1
    :try_end_16b
    .catchall {:try_start_16a .. :try_end_16b} :catchall_176

    return-object v5

    :catchall_16c
    move-exception p0

    :try_start_16d
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2269
    throw p0

    :catchall_173
    move-exception p0

    .line 2319
    monitor-exit v0
    :try_end_175
    .catchall {:try_start_16d .. :try_end_175} :catchall_173

    :try_start_175
    throw p0

    :catchall_176
    move-exception p0

    .line 2320
    monitor-exit v1
    :try_end_178
    .catchall {:try_start_175 .. :try_end_178} :catchall_176

    throw p0

    :catchall_179
    move-exception p0

    .line 2241
    :try_start_17a
    monitor-exit v0
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_179

    throw p0
.end method

.method public renameSharedAccountAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 12

    .line 4796
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->handleIncomingUser(I)I

    move-result p3

    .line 4797
    invoke-virtual {p0, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p3

    .line 4798
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findSharedAccountId(Landroid/accounts/Account;)J

    move-result-wide v3

    .line 4799
    iget-object v0, p3, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accounts/AccountsDb;->renameSharedAccount(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_27

    .line 4801
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v6

    .line 4802
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_ACCOUNT_RENAME:Ljava/lang/String;

    const-string/jumbo v2, "shared_accounts"

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V

    .line 4805
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->renameAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;)Landroid/accounts/Account;

    :cond_27
    if-lez v7, :cond_2b

    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method public final resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;
    .registers 10

    const-string/jumbo v0, "packageName cannot be null"

    .line 719
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 722
    :try_start_6
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_a} :catch_a4

    .line 724
    :try_start_a
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_9f

    .line 726
    :try_start_14
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_17} :catch_a4

    const/16 v0, 0x3e8

    .line 734
    invoke-static {v2, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    .line 735
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 738
    :cond_25
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 739
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->checkPackageSignature(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_37

    .line 743
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 747
    :cond_37
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    if-eqz v4, :cond_42

    .line 750
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 753
    :cond_42
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v4

    const-string v5, "android.permission.GET_ACCOUNTS_PRIVILEGED"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p2, v4, v5}, Lcom/android/server/accounts/AccountManagerService;->isPermittedForPackage(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v4

    .line 757
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isProfileOwner(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 758
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 761
    :cond_5b
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isPreOApplication(Ljava/lang/String;)Z

    move-result v1

    if-nez v0, :cond_90

    if-eqz v1, :cond_6d

    .line 762
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    .line 763
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->checkGetAccountsPermission(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_90

    :cond_6d
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    .line 764
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->checkReadContactsPermission(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_83

    iget-object p2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    .line 765
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->accountTypeManagesContacts(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_90

    :cond_83
    if-eqz v4, :cond_86

    goto :goto_90

    :cond_86
    const-string p2, "android:accounts:key_legacy_not_visible"

    .line 775
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    if-nez v3, :cond_9a

    const/4 v3, 0x4

    goto :goto_9a

    :cond_90
    :goto_90
    const-string p2, "android:accounts:key_legacy_visible"

    .line 769
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getAccountVisibilityFromCache(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p0

    if-nez p0, :cond_99

    goto :goto_9a

    :cond_99
    move v3, p0

    .line 781
    :cond_9a
    :goto_9a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_9f
    move-exception p0

    .line 726
    :try_start_a0
    invoke-static {v0, v1}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 727
    throw p0
    :try_end_a4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a0 .. :try_end_a4} :catch_a4

    :catch_a4
    move-exception p0

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "resolveAccountVisibility#Package not found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    .line 730
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 14

    if-eqz p1, :cond_71

    if-nez p2, :cond_5

    goto :goto_71

    .line 6221
    :cond_5
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 6222
    iget-object v1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6223
    :try_start_10
    iget-object v2, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_6e

    .line 6224
    :try_start_13
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_6b

    .line 6226
    :try_start_18
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    cmp-long v3, v5, v3

    if-ltz v3, :cond_30

    .line 6228
    iget-object v4, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    int-to-long v8, p3

    move-object v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accounts/AccountsDb;->deleteGrantsByAccountIdAuthTokenTypeAndUid(JLjava/lang/String;J)Z

    .line 6230
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_64

    .line 6233
    :cond_30
    :try_start_30
    iget-object v3, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v3}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 6237
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object p2

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    .line 6238
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 6236
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 6239
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_30 .. :try_end_45} :catchall_6b

    .line 6240
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_6e

    .line 6244
    iget-object p2, p0, Lcom/android/server/accounts/AccountManagerService;->mAppPermissionChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;

    .line 6245
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    new-instance v2, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p3}, Lcom/android/server/accounts/AccountManagerService$$ExternalSyntheticLambda0;-><init>(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;Landroid/accounts/Account;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4c

    :cond_63
    return-void

    :catchall_64
    move-exception p0

    .line 6233
    :try_start_65
    iget-object p1, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 6234
    throw p0

    :catchall_6b
    move-exception p0

    .line 6239
    monitor-exit v2
    :try_end_6d
    .catchall {:try_start_65 .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p0

    :catchall_6e
    move-exception p0

    .line 6240
    monitor-exit v1
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_6e

    throw p0

    :cond_71
    :goto_71
    const-string p0, "AccountManagerService"

    const-string/jumbo p1, "revokeAppPermission: called with invalid arguments"

    .line 6218
    new-instance p2, Ljava/lang/Exception;

    invoke-direct {p2}, Ljava/lang/Exception;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v0, 0x0

    if-eqz p2, :cond_67

    if-nez p3, :cond_6

    goto :goto_67

    .line 2739
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    .line 2740
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 2739
    invoke-virtual {p0, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    .line 2741
    iget-object v1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2742
    :try_start_18
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_1d
    .catchall {:try_start_18 .. :try_end_1d} :catchall_64

    .line 2745
    :try_start_1d
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, p2}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v2
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_5d

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_30

    .line 2757
    :try_start_29
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2761
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_64

    return v0

    .line 2749
    :cond_30
    :try_start_30
    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v2, v3, p3}, Lcom/android/server/accounts/AccountsDb;->deleteAuthtokensByAccountIdAndType(JLjava/lang/String;)Z

    .line 2750
    iget-object v6, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v6, v2, v3, p3, p4}, Lcom/android/server/accounts/AccountsDb;->insertAuthToken(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-ltz v2, :cond_56

    .line 2751
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_44
    .catchall {:try_start_30 .. :try_end_44} :catchall_5d

    const/4 v0, 0x1

    .line 2757
    :try_start_45
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2759
    iget-object v2, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4d
    .catchall {:try_start_45 .. :try_end_4d} :catchall_64

    .line 2760
    :try_start_4d
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_4d .. :try_end_51} :catchall_53

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_64

    return v0

    :catchall_53
    move-exception p0

    :try_start_54
    monitor-exit v2
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    :try_start_55
    throw p0

    .line 2757
    :cond_56
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2761
    monitor-exit v1

    return v0

    :catchall_5d
    move-exception p0

    .line 2757
    iget-object p1, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 2763
    throw p0

    :catchall_64
    move-exception p0

    .line 2764
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_55 .. :try_end_66} :catchall_64

    throw p0

    :cond_67
    :goto_67
    return v0
.end method

.method public final saveCachedToken(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;J)V
    .registers 19

    if-eqz p2, :cond_31

    if-eqz p5, :cond_31

    if-eqz p3, :cond_31

    if-nez p4, :cond_9

    goto :goto_31

    .line 2726
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getSigninRequiredNotificationId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Lcom/android/server/accounts/AccountManagerService$NotificationId;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    .line 2727
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    move-object v2, p0

    .line 2726
    invoke-virtual {p0, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->cancelNotification(Lcom/android/server/accounts/AccountManagerService$NotificationId;Landroid/os/UserHandle;)V

    move-object v0, p1

    .line 2728
    iget-object v9, v0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2729
    :try_start_1d
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v1

    move-object v2, p2

    move-object/from16 v3, p6

    move-object v4, p5

    move-object v5, p3

    move-object v6, p4

    move-wide/from16 v7, p7

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/accounts/TokenCache;->put(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BJ)V

    .line 2731
    monitor-exit v9

    return-void

    :catchall_2e
    move-exception v0

    monitor-exit v9
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_2e

    throw v0

    :cond_31
    :goto_31
    return-void
.end method

.method public final sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 6

    .line 1118
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 1119
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1120
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    iget-object p2, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v1, "authAccount"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string p2, "accountType"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1123
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendAccountsChangedBroadcast(I)V
    .registers 5

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "the accounts changed, sending broadcast of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 1113
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AccountManagerService"

    .line 1112
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final sendErrorResponse(Landroid/accounts/IAccountManagerResponse;ILjava/lang/String;)V
    .registers 4

    .line 6554
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_13

    :catch_4
    move-exception p0

    const/4 p1, 0x2

    const-string p2, "AccountManagerService"

    .line 6558
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "failure while notifying response"

    .line 6559
    invoke-static {p2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_13
    return-void
.end method

.method public final sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 6

    .line 1007
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    .line 1009
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1010
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    .line 1011
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_c

    .line 1013
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_c

    :cond_3c
    return-void
.end method

.method public final sendResponse(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .registers 3

    .line 6541
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_13

    :catch_4
    move-exception p0

    const/4 p1, 0x2

    const-string p2, "AccountManagerService"

    .line 6545
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "failure while notifying response"

    .line 6546
    invoke-static {p2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_13
    return-void
.end method

.method public setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .registers 14

    const-string v0, "account cannot be null"

    .line 815
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "packageName cannot be null"

    .line 816
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 817
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 818
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 819
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 820
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->isSystemUid(I)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_3e

    :cond_22
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 823
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p0, p2

    const/4 p2, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, p2

    const-string/jumbo p1, "uid %s cannot get secrets for accounts of type: %s"

    .line 821
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 825
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 827
    :cond_3e
    :goto_3e
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 829
    :try_start_42
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v9

    const/4 v8, 0x1

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    .line 830
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/accounts/AccountManagerService;->setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result p0
    :try_end_4f
    .catchall {:try_start_42 .. :try_end_4f} :catchall_53

    .line 833
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return p0

    :catchall_53
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 834
    throw p0
.end method

.method public final setAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;IZLcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .registers 12

    .line 855
    iget-object v0, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_3
    iget-object v1, p5, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_c6

    const/4 v2, 0x0

    if-eqz p4, :cond_40

    .line 860
    :try_start_9
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 862
    invoke-virtual {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    .line 863
    invoke-virtual {p0, p1, p5}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v4

    goto :goto_5b

    .line 865
    :cond_18
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {p0, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_25

    .line 866
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_c3

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_c6

    return v2

    .line 868
    :cond_25
    :try_start_25
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 870
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v4

    .line 869
    invoke-interface {v3, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 871
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 872
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 873
    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 878
    :cond_40
    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountManagerService;->isSpecialPackageKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 879
    invoke-virtual {p0, p2, v3}, Lcom/android/server/accounts/AccountManagerService;->packageExistsForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_53

    .line 881
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_25 .. :try_end_51} :catchall_c3

    :try_start_51
    monitor-exit v0
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_c6

    return v2

    .line 883
    :cond_53
    :try_start_53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 884
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 887
    :cond_5b
    :goto_5b
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/android/server/accounts/AccountManagerService;->updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Z

    move-result p3

    if-nez p3, :cond_64

    .line 888
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_53 .. :try_end_62} :catchall_c3

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_c6

    return v2

    :cond_64
    if-eqz p4, :cond_bf

    .line 893
    :try_start_66
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    .line 892
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6e
    :goto_6e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_a0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Map$Entry;

    .line 894
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 896
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 897
    invoke-virtual {p0, v2}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v2

    invoke-virtual {p0, v3}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v3

    if-eq v2, v3, :cond_6e

    .line 898
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p0, p4, p5}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_6e

    .line 901
    :cond_a0
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 902
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p4

    invoke-virtual {p0, p1, p3, p4}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_a4

    .line 904
    :cond_b8
    invoke-static {p5}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    :cond_bf
    const/4 p0, 0x1

    .line 906
    monitor-exit v1
    :try_end_c1
    .catchall {:try_start_66 .. :try_end_c1} :catchall_c3

    :try_start_c1
    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c6

    return p0

    :catchall_c3
    move-exception p0

    .line 907
    :try_start_c4
    monitor-exit v1
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    :try_start_c5
    throw p0

    :catchall_c6
    move-exception p0

    .line 908
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_c5 .. :try_end_c8} :catchall_c6

    throw p0
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 2802
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 2803
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2804
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", authTokenType "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2807
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2804
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    const-string v1, "account cannot be null"

    .line 2809
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "authTokenType cannot be null"

    .line 2810
    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2811
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2812
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 2819
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 2821
    :try_start_58
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2822
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->saveAuthTokenToDatabase(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5f
    .catchall {:try_start_58 .. :try_end_5f} :catchall_63

    .line 2824
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_63
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2825
    throw p0

    :cond_68
    new-array p0, v2, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 2815
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p0, p2

    const/4 p2, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, p2

    const-string/jumbo p1, "uid %s cannot set auth tokens associated with accounts of type: %s"

    .line 2813
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2817
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBindInstantServiceAllowed(IZ)V
    .registers 3

    .line 458
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-interface {p0, p1, p2}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->setBindInstantServiceAllowed(IZ)V

    return-void
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 8

    .line 2830
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 2831
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2832
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAuthToken: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2834
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2832
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    const-string v1, "account cannot be null"

    .line 2836
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2837
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2838
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 2845
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 2847
    :try_start_4b
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    .line 2848
    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_56

    .line 2850
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_56
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2851
    throw p0

    :cond_5b
    new-array p0, v2, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 2841
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, p2

    const/4 p2, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, p2

    const-string/jumbo p1, "uid %s cannot set secrets for accounts of type: %s"

    .line 2839
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2843
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setPasswordInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;I)V
    .registers 27

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v0, p3

    if-nez v10, :cond_b

    return-void

    :cond_b
    const/4 v1, 0x0

    .line 2860
    iget-object v11, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2861
    :try_start_f
    iget-object v12, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_108

    .line 2862
    :try_start_12
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_105

    .line 2864
    :try_start_17
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v10}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v4

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-ltz v2, :cond_61

    .line 2866
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v4, v5, v0}, Lcom/android/server/accounts/AccountsDb;->updateCeAccountPassword(JLjava/lang/String;)I

    .line 2867
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteAuthTokensByAccountId(J)Z

    .line 2868
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2869
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 2870
    iget-object v2, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_40
    .catchall {:try_start_17 .. :try_end_40} :catchall_b3

    const/4 v13, 0x1

    if-eqz v0, :cond_4d

    .line 2876
    :try_start_43
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4a

    goto :goto_4d

    .line 2878
    :cond_4a
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SET_PASSWORD:Ljava/lang/String;

    goto :goto_4f

    .line 2877
    :cond_4d
    :goto_4d
    sget-object v0, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CLEAR_PASSWORD:Ljava/lang/String;

    :goto_4f
    move-object v2, v0

    const-string v3, "accounts"

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v7, p4

    .line 2879
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;I)V
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_5e

    move/from16 v16, v13

    goto :goto_63

    :catchall_5e
    move-exception v0

    move v5, v13

    goto :goto_b5

    :cond_61
    move/from16 v16, v1

    .line 2883
    :goto_63
    :try_start_63
    iget-object v0, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    if-eqz v16, :cond_74

    .line 2886
    invoke-virtual {v8, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2887
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2891
    :cond_74
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_78
    .catchall {:try_start_63 .. :try_end_78} :catchall_105

    .line 2893
    :try_start_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v16, :cond_8e

    const-string v3, " succeeded"

    goto :goto_90

    :cond_8e
    const-string v3, " failed"

    .line 2895
    :goto_90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/4 v14, 0x5

    const/4 v15, 0x4

    .line 2899
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v17

    const-string v18, "AccountManagerService"

    const-string v20, ""

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v21

    .line 2896
    invoke-static/range {v14 .. v21}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a8
    .catchall {:try_start_78 .. :try_end_a8} :catchall_ae

    .line 2905
    :try_start_a8
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2910
    monitor-exit v12
    :try_end_ac
    .catchall {:try_start_a8 .. :try_end_ac} :catchall_105

    .line 2911
    :try_start_ac
    monitor-exit v11
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_108

    return-void

    :catchall_ae
    move-exception v0

    .line 2905
    :try_start_af
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2906
    throw v0

    :catchall_b3
    move-exception v0

    move v5, v1

    .line 2883
    :goto_b5
    iget-object v1, v9, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v1}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    if-eqz v5, :cond_c6

    .line 2886
    invoke-virtual {v8, v10, v9}, Lcom/android/server/accounts/AccountManagerService;->sendNotificationAccountUpdated(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 2887
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 2891
    :cond_c6
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_ca
    .catchall {:try_start_af .. :try_end_ca} :catchall_105

    .line 2893
    :try_start_ca
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v5, :cond_e0

    const-string v4, " succeeded"

    goto :goto_e2

    :cond_e0
    const-string v4, " failed"

    .line 2895
    :goto_e2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x5

    const/4 v4, 0x4

    .line 2899
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "AccountManagerService"

    const-string v10, ""

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v13

    move-object v9, v10

    move v10, v13

    .line 2896
    invoke-static/range {v3 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_fc
    .catchall {:try_start_ca .. :try_end_fc} :catchall_100

    .line 2905
    :try_start_fc
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2909
    throw v0

    :catchall_100
    move-exception v0

    .line 2905
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2906
    throw v0

    :catchall_105
    move-exception v0

    .line 2910
    monitor-exit v12
    :try_end_107
    .catchall {:try_start_fc .. :try_end_107} :catchall_105

    :try_start_107
    throw v0

    :catchall_108
    move-exception v0

    .line 2911
    monitor-exit v11
    :try_end_10a
    .catchall {:try_start_107 .. :try_end_10a} :catchall_108

    throw v0
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 2942
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 2943
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 2944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setUserData: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", caller\'s uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2944
    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3e
    if-eqz p2, :cond_8f

    if-eqz p1, :cond_87

    .line 2951
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 2952
    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/server/accounts/AccountManagerService;->isAccountManagedByCaller(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 2959
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v2

    .line 2961
    :try_start_52
    invoke-virtual {p0, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 2962
    invoke-virtual {p0, v0, p1}, Lcom/android/server/accounts/AccountManagerService;->accountExistsCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;)Z

    move-result v1
    :try_end_5a
    .catchall {:try_start_52 .. :try_end_5a} :catchall_67

    if-nez v1, :cond_60

    .line 2967
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    .line 2965
    :cond_60
    :try_start_60
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_67

    .line 2967
    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_67
    move-exception p0

    invoke-static {v2, v3}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 2968
    throw p0

    :cond_6c
    new-array p0, v2, [Ljava/lang/Object;

    const/4 p2, 0x0

    .line 2955
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p0, p2

    const/4 p2, 0x1

    iget-object p1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object p1, p0, p2

    const-string/jumbo p1, "uid %s cannot set user data for accounts of type: %s"

    .line 2953
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 2957
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2950
    :cond_87
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "account is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2949
    :cond_8f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "key is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setUserdataInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v1, p1

    move-object/from16 v0, p3

    move-object/from16 v2, p4

    .line 2986
    iget-object v3, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2987
    :try_start_9
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_189

    .line 2992
    :try_start_e
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_148

    move-object/from16 v5, p2

    :try_start_12
    invoke-virtual {v4, v5}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v6
    :try_end_16
    .catchall {:try_start_12 .. :try_end_16} :catchall_146

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_5b

    .line 3010
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 3013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_25
    .catchall {:try_start_1c .. :try_end_25} :catchall_189

    .line 3015
    :try_start_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    .line 3017
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x5

    const/4 v9, 0x4

    .line 3021
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "AccountManagerService"

    const-string v14, ""

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    const/4 v10, 0x0

    .line 3018
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_51
    .catchall {:try_start_25 .. :try_end_51} :catchall_56

    .line 3027
    :try_start_51
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3029
    monitor-exit v3

    return-void

    :catchall_56
    move-exception v0

    .line 3027
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3028
    throw v0
    :try_end_5b
    .catchall {:try_start_51 .. :try_end_5b} :catchall_189

    .line 2996
    :cond_5b
    :try_start_5b
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v6, v7, v0}, Lcom/android/server/accounts/AccountsDb;->findExtrasIdByAccountId(JLjava/lang/String;)J

    move-result-wide v10

    cmp-long v4, v10, v8

    if-gez v4, :cond_ae

    .line 2998
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v6, v7, v0, v2}, Lcom/android/server/accounts/AccountsDb;->insertExtra(JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v6
    :try_end_6b
    .catchall {:try_start_5b .. :try_end_6b} :catchall_146

    cmp-long v4, v6, v8

    if-gez v4, :cond_f5

    .line 3010
    :try_start_6f
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 3013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_78
    .catchall {:try_start_6f .. :try_end_78} :catchall_189

    .line 3015
    :try_start_78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    .line 3017
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x5

    const/4 v9, 0x4

    .line 3021
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "AccountManagerService"

    const-string v14, ""

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    const/4 v10, 0x0

    .line 3018
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a4
    .catchall {:try_start_78 .. :try_end_a4} :catchall_a9

    .line 3027
    :try_start_a4
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3029
    monitor-exit v3

    return-void

    :catchall_a9
    move-exception v0

    .line 3027
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3028
    throw v0
    :try_end_ae
    .catchall {:try_start_a4 .. :try_end_ae} :catchall_189

    .line 3002
    :cond_ae
    :try_start_ae
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v10, v11, v2}, Lcom/android/server/accounts/AccountsDb;->updateExtra(JLjava/lang/String;)Z

    move-result v4
    :try_end_b4
    .catchall {:try_start_ae .. :try_end_b4} :catchall_146

    if-nez v4, :cond_f5

    .line 3010
    :try_start_b6
    iget-object v0, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 3013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_bf
    .catchall {:try_start_b6 .. :try_end_bf} :catchall_189

    .line 3015
    :try_start_bf
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    .line 3017
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x5

    const/4 v9, 0x4

    .line 3021
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "AccountManagerService"

    const-string v14, ""

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    const/4 v10, 0x0

    .line 3018
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_eb
    .catchall {:try_start_bf .. :try_end_eb} :catchall_f0

    .line 3027
    :try_start_eb
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3029
    monitor-exit v3

    return-void

    :catchall_f0
    move-exception v0

    .line 3027
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3028
    throw v0
    :try_end_f5
    .catchall {:try_start_eb .. :try_end_f5} :catchall_189

    .line 3005
    :cond_f5
    :try_start_f5
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_fa
    .catchall {:try_start_f5 .. :try_end_fa} :catchall_146

    .line 3010
    :try_start_fa
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 3013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_189

    .line 3015
    :try_start_103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Updating "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " succeeded"

    .line 3017
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v9, 0x5

    const/4 v10, 0x4

    .line 3021
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    const-string v13, "AccountManagerService"

    const-string v15, ""

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v16

    const/4 v11, 0x1

    .line 3018
    invoke-static/range {v9 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_12f
    .catchall {:try_start_103 .. :try_end_12f} :catchall_141

    .line 3027
    :try_start_12f
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3032
    iget-object v4, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_135
    .catchall {:try_start_12f .. :try_end_135} :catchall_189

    .line 3033
    :try_start_135
    invoke-virtual/range {p0 .. p4}, Lcom/android/server/accounts/AccountManagerService;->writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountUserDataCaches()V

    .line 3035
    monitor-exit v4
    :try_end_13c
    .catchall {:try_start_135 .. :try_end_13c} :catchall_13e

    .line 3036
    :try_start_13c
    monitor-exit v3
    :try_end_13d
    .catchall {:try_start_13c .. :try_end_13d} :catchall_189

    return-void

    :catchall_13e
    move-exception v0

    .line 3035
    :try_start_13f
    monitor-exit v4
    :try_end_140
    .catchall {:try_start_13f .. :try_end_140} :catchall_13e

    :try_start_140
    throw v0

    :catchall_141
    move-exception v0

    .line 3027
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3028
    throw v0

    :catchall_146
    move-exception v0

    goto :goto_14b

    :catchall_148
    move-exception v0

    move-object/from16 v5, p2

    .line 3010
    :goto_14b
    iget-object v2, v1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 3013
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_154
    .catchall {:try_start_140 .. :try_end_154} :catchall_189

    .line 3015
    :try_start_154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3016
    invoke-virtual/range {p2 .. p2}, Landroid/accounts/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed"

    .line 3017
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v8, 0x5

    const/4 v9, 0x4

    .line 3021
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "AccountManagerService"

    const-string v14, ""

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v15

    const/4 v10, 0x0

    .line 3018
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_180
    .catchall {:try_start_154 .. :try_end_180} :catchall_184

    .line 3027
    :try_start_180
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3031
    throw v0

    :catchall_184
    move-exception v0

    .line 3027
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3028
    throw v0

    :catchall_189
    move-exception v0

    .line 3036
    monitor-exit v3
    :try_end_18b
    .catchall {:try_start_180 .. :try_end_18b} :catchall_189

    throw v0
.end method

.method public final shouldNotifyPackageOnAccountRemoval(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .registers 7

    .line 1075
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->resolveAccountVisibility(Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_10

    const/4 v2, 0x2

    if-eq p1, v2, :cond_10

    return v1

    .line 1081
    :cond_10
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.accounts.action.ACCOUNT_REMOVED"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000000

    .line 1082
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1083
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1084
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result p2

    .line 1085
    invoke-virtual {p0, p1, v1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 1086
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_32

    goto :goto_33

    :cond_32
    move v0, v1

    :goto_33
    return v0
.end method

.method public final showCantAddAccount(II)V
    .registers 6

    .line 3981
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 3982
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-nez v0, :cond_f

    .line 3985
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDefaultCantAddAccountIntent(I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_26

    :cond_f
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1b

    const-string/jumbo v1, "no_modify_accounts"

    .line 3987
    invoke-virtual {v0, p2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_26

    :cond_1b
    const/16 v1, 0x65

    if-ne p1, v1, :cond_25

    const/4 v1, 0x0

    .line 3990
    invoke-virtual {v0, p2, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->createShowAdminSupportIntent(IZ)Landroid/content/Intent;

    move-result-object v0

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    if-nez v0, :cond_2c

    .line 3993
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getDefaultCantAddAccountIntent(I)Landroid/content/Intent;

    move-result-object v0

    .line 3995
    :cond_2c
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 3997
    :try_start_30
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_3e

    .line 3999
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_3e
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4000
    throw p0
.end method

.method public someUserHasAccount(Landroid/accounts/Account;)Z
    .registers 7

    .line 4462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    invoke-static {v1, v0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4467
    :try_start_10
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getAllAccountsForSystemProcess()[Landroid/accounts/AccountAndUser;

    move-result-object p0

    .line 4468
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_17
    if-ltz v2, :cond_2a

    .line 4469
    aget-object v4, p0, v2

    iget-object v4, v4, Landroid/accounts/AccountAndUser;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_21
    .catchall {:try_start_10 .. :try_end_21} :catchall_2f

    if-eqz v4, :cond_27

    .line 4475
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_2a
    const/4 p0, 0x0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4476
    throw p0

    .line 4463
    :cond_34
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can check for accounts across users"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public startAddAccountSession(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v15, p2

    move-object/from16 v1, p6

    const/4 v2, 0x1

    .line 3650
    invoke-static {v1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const-string v3, "AccountManagerService"

    const/4 v5, 0x2

    .line 3651
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 3652
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAddAccountSession: accountType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", authTokenType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p3

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", requiredFeatures "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3656
    invoke-static/range {p4 .. p4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", caller\'s uid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3658
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3659
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3652
    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6f

    :cond_6b
    move-object/from16 v11, p3

    move/from16 v6, p5

    :goto_6f
    const/4 v3, 0x0

    if-eqz v4, :cond_74

    move v5, v2

    goto :goto_75

    :cond_74
    move v5, v3

    :goto_75
    const-string/jumbo v7, "response cannot be null"

    .line 3661
    invoke-static {v5, v7}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz v15, :cond_7e

    goto :goto_7f

    :cond_7e
    move v2, v3

    :goto_7f
    const-string v3, "accountType cannot be null"

    .line 3662
    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 3664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3665
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 3666
    invoke-virtual {v0, v3, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccounts(II)Z

    move-result v5

    if-nez v5, :cond_9d

    const/16 v1, 0x64

    :try_start_94
    const-string v2, "User is not allowed to add an account!"

    .line 3668
    invoke-interface {v4, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_99} :catch_99

    .line 3672
    :catch_99
    invoke-virtual {v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3675
    :cond_9d
    invoke-virtual {v0, v3, v15, v2}, Lcom/android/server/accounts/AccountManagerService;->canUserModifyAccountsForType(ILjava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_ae

    const/16 v1, 0x65

    :try_start_a5
    const-string v2, "User cannot modify accounts of this type (policy)."

    .line 3677
    invoke-interface {v4, v1, v2}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a5 .. :try_end_aa} :catch_aa

    .line 3681
    :catch_aa
    invoke-virtual {v0, v1, v3}, Lcom/android/server/accounts/AccountManagerService;->showCantAddAccount(II)V

    return-void

    .line 3685
    :cond_ae
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    if-nez v1, :cond_b9

    .line 3686
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :cond_b9
    move-object v13, v1

    const-string v1, "callerUid"

    .line 3687
    invoke-virtual {v13, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "callerPid"

    .line 3688
    invoke-virtual {v13, v1, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "androidPackageName"

    .line 3691
    invoke-virtual {v13, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v1, "android.permission.GET_PASSWORD"

    .line 3692
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v2, v1}, Lcom/android/server/accounts/AccountManagerService;->checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v10

    .line 3695
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v16

    .line 3697
    :try_start_d8
    invoke-virtual {v0, v3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 3698
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_CALLED_START_ACCOUNT_ADD:Ljava/lang/String;

    const-string v5, "accounts"

    invoke-virtual {v0, v3, v1, v5, v2}, Lcom/android/server/accounts/AccountManagerService;->logRecordWithUid(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3700
    new-instance v18, Lcom/android/server/accounts/AccountManagerService$10;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p5

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v15, p2

    invoke-direct/range {v1 .. v15}, Lcom/android/server/accounts/AccountManagerService$10;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 3728
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_fe
    .catchall {:try_start_d8 .. :try_end_fe} :catchall_102

    .line 3730
    invoke-static/range {v16 .. v17}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_102
    move-exception v0

    invoke-static/range {v16 .. v17}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 3731
    throw v0
.end method

.method public final startChooseAccountActivityWithAccounts(Landroid/accounts/IAccountManagerResponse;[Landroid/accounts/Account;Ljava/lang/String;)V
    .registers 7

    .line 4889
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/ChooseAccountActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "accounts"

    .line 4890
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4891
    new-instance p2, Landroid/accounts/AccountManagerResponse;

    invoke-direct {p2, p1}, Landroid/accounts/AccountManagerResponse;-><init>(Landroid/accounts/IAccountManagerResponse;)V

    const-string p1, "accountManagerResponse"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "androidPackageName"

    .line 4893
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4895
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startUpdateCredentialsSession(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v11, p2

    move-object/from16 v13, p5

    const/4 v1, 0x1

    .line 4117
    invoke-static {v13, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 4118
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 4119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startUpdateCredentialsSession: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4122
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4123
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4119
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63

    :cond_5f
    move-object/from16 v12, p3

    move/from16 v6, p4

    :goto_63
    if-eqz v4, :cond_b4

    if-eqz v11, :cond_ac

    .line 4132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4133
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    const-string v3, "androidPackageName"

    .line 4136
    invoke-virtual {v13, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "android.permission.GET_PASSWORD"

    .line 4137
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v1, v5}, Lcom/android/server/accounts/AccountManagerService;->checkPermissionAndNote(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v10

    .line 4140
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v14

    .line 4142
    :try_start_83
    invoke-virtual {v0, v2}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 4143
    new-instance v16, Lcom/android/server/accounts/AccountManagerService$14;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v7, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$14;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZLjava/lang/String;ZZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4173
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_a3
    .catchall {:try_start_83 .. :try_end_a3} :catchall_a7

    .line 4175
    invoke-static {v14, v15}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_a7
    move-exception v0

    invoke-static {v14, v15}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4176
    throw v0

    .line 4129
    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4126
    :cond_b4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final syncDeCeAccountsLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 5

    .line 1432
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService;->mUsers:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v1, "mUsers lock must be held"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1433
    iget-object v0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0}, Lcom/android/server/accounts/AccountsDb;->findCeAccountsNotInDe()Ljava/util/List;

    move-result-object v0

    .line 1434
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5b

    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " accounts were previously deleted while user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " was locked. Removing accounts from CE tables"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AccountManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    sget-object v1, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_SYNC_DE_CE_ACCOUNTS:Ljava/lang/String;

    const-string v2, "accounts"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    const/16 v2, 0x3e8

    .line 1442
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/accounts/AccountManagerService;->removeAccountInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;I)Z

    goto :goto_49

    :cond_5b
    return-void
.end method

.method public final syncSharedAccounts(I)V
    .registers 10

    .line 1536
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getSharedAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 1537
    array-length v1, v0

    if-nez v1, :cond_a

    goto :goto_58

    .line 1538
    :cond_a
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1, v1}, Lcom/android/server/accounts/AccountManagerService;->getAccountsAsUser(Ljava/lang/String;ILjava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1539
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_27

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserManager()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    goto :goto_28

    :cond_27
    move v3, v4

    :goto_28
    if-gez v3, :cond_46

    .line 1543
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "User "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has shared accounts, but no parent user"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AccountManagerService"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1546
    :cond_46
    array-length v5, v0

    :goto_47
    if-ge v4, v5, :cond_58

    aget-object v6, v0, v4

    .line 1547
    invoke-static {v1, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_55

    .line 1549
    :cond_52
    invoke-virtual {p0, v2, v6, v3, p1}, Lcom/android/server/accounts/AccountManagerService;->copyAccountToUser(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;II)V

    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_47

    :cond_58
    :goto_58
    return-void
.end method

.method public unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 971
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 972
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 973
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 974
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v1

    .line 976
    :try_start_11
    invoke-virtual {p0, v0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v0

    .line 977
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/accounts/AccountManagerService;->unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1c

    .line 979
    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v1, v2}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 980
    throw p0
.end method

.method public final unregisterAccountListener([Ljava/lang/String;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V
    .registers 10

    .line 985
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    monitor-enter p0

    if-nez p1, :cond_c

    const/4 p1, 0x0

    .line 988
    :try_start_8
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 990
    :cond_c
    array-length v0, p1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v0, :cond_4c

    aget-object v2, p1, v1

    .line 991
    invoke-static {p3}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetmReceiversForType(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_44

    .line 992
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 995
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 996
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    .line 997
    invoke-interface {v2, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_41

    .line 999
    :cond_35
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 993
    :cond_44
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to unregister wrong receiver"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1002
    :cond_4c
    monitor-exit p0

    return-void

    :catchall_4e
    move-exception p1

    monitor-exit p0
    :try_end_50
    .catchall {:try_start_8 .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public final updateAccountVisibilityLocked(Landroid/accounts/Account;Ljava/lang/String;ILcom/android/server/accounts/AccountManagerService$UserAccounts;)Z
    .registers 10

    .line 914
    iget-object v0, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v0, p1}, Lcom/android/server/accounts/AccountsDb;->findDeAccountId(Landroid/accounts/Account;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-gez v2, :cond_e

    return v3

    .line 919
    :cond_e
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    .line 921
    :try_start_12
    iget-object v4, p4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {v4, v0, v1, p2, p3}, Lcom/android/server/accounts/AccountsDb;->setAccountVisibility(JLjava/lang/String;I)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_31

    if-nez v0, :cond_1e

    .line 926
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v3

    :cond_1e
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 929
    invoke-virtual {p0, p1, p4}, Lcom/android/server/accounts/AccountManagerService;->getPackagesAndVisibilityForAccountLocked(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    .line 930
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V

    const/4 p0, 0x1

    return p0

    :catchall_31
    move-exception p0

    .line 926
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 927
    throw p0
.end method

.method public updateAppPermission(Landroid/accounts/Account;Ljava/lang/String;IZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6161
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->getCallingUid()I

    move-result v0

    .line 6163
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    if-eqz p4, :cond_12

    .line 6168
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    goto :goto_15

    .line 6170
    :cond_12
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/accounts/AccountManagerService;->revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V

    :goto_15
    return-void

    .line 6164
    :cond_16
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0}, Ljava/lang/SecurityException;-><init>()V

    throw p0
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .registers 23

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    const/4 v1, 0x1

    move-object/from16 v13, p5

    .line 4069
    invoke-static {v13, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    const-string v1, "AccountManagerService"

    const/4 v2, 0x2

    .line 4070
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 4071
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCredentials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", authTokenType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", expectActivityLaunch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p4

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", caller\'s uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4075
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4076
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4071
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    :cond_5d
    move-object/from16 v12, p3

    move/from16 v6, p4

    :goto_61
    if-eqz v0, :cond_a1

    if-eqz v11, :cond_99

    .line 4080
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    .line 4081
    invoke-static {}, Landroid/accounts/IAccountManager$Stub;->clearCallingIdentity()J

    move-result-wide v14

    move-object/from16 v2, p0

    .line 4083
    :try_start_6f
    invoke-virtual {v2, v1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v3

    .line 4084
    new-instance v16, Lcom/android/server/accounts/AccountManagerService$13;

    iget-object v5, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v7, 0x1

    iget-object v8, v11, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p5

    invoke-direct/range {v1 .. v13}, Lcom/android/server/accounts/AccountManagerService$13;-><init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 4104
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/accounts/AccountManagerService$Session;->bind()V
    :try_end_90
    .catchall {:try_start_6f .. :try_end_90} :catchall_94

    .line 4106
    invoke-static {v14, v15}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    return-void

    :catchall_94
    move-exception v0

    invoke-static {v14, v15}, Landroid/accounts/IAccountManager$Stub;->restoreCallingIdentity(J)V

    .line 4107
    throw v0

    .line 4079
    :cond_99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4078
    :cond_a1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateLastAuthenticatedTime(Landroid/accounts/Account;)Z
    .registers 4

    .line 1851
    invoke-virtual {p0}, Lcom/android/server/accounts/AccountManagerService;->getUserAccountsForCaller()Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p0

    .line 1852
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1853
    :try_start_7
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_16

    .line 1854
    :try_start_a
    iget-object p0, p0, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountsDb;->updateAccountLastAuthenticatedTime(Landroid/accounts/Account;)Z

    move-result p0

    monitor-exit v1
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_13

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_16

    return p0

    :catchall_13
    move-exception p0

    .line 1855
    :try_start_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw p0

    :catchall_16
    move-exception p0

    .line 1856
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public validateAccounts(I)V
    .registers 3

    .line 1166
    invoke-virtual {p0, p1}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object p1

    const/4 v0, 0x1

    .line 1169
    invoke-virtual {p0, p1, v0}, Lcom/android/server/accounts/AccountManagerService;->validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V

    return-void
.end method

.method public final validateAccountsInternal(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Z)V
    .registers 21

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const-string v0, "AccountManagerService"

    const/4 v1, 0x3

    .line 1178
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "AccountManagerService"

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "validateAccountsInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isCeDatabaseAttached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 1180
    invoke-virtual {v2}, Lcom/android/server/accounts/AccountsDb;->isCeDatabaseAttached()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " userLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/accounts/AccountManagerService;->mLocalUnlockedUsers:Landroid/util/SparseBooleanArray;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    .line 1181
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_48
    if-eqz p2, :cond_53

    .line 1185
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/accounts/IAccountAuthenticatorCache;->invalidateCache(I)V

    .line 1188
    :cond_53
    iget-object v0, v7, Lcom/android/server/accounts/AccountManagerService;->mAuthenticatorCache:Lcom/android/server/accounts/IAccountAuthenticatorCache;

    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/accounts/AccountManagerService;->getAuthenticatorTypeAndUIDForUser(Lcom/android/server/accounts/IAccountAuthenticatorCache;I)Ljava/util/HashMap;

    move-result-object v0

    .line 1190
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/server/accounts/AccountManagerService;->isLocalUnlockedUser(I)Z

    move-result v9

    .line 1192
    iget-object v10, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->dbLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1193
    :try_start_68
    iget-object v11, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->cacheLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_2a4

    .line 1197
    :try_start_6b
    iget-object v12, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    .line 1198
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->findMetaAuthUid()Ljava/util/Map;

    move-result-object v1

    .line 1200
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v13

    const/4 v2, 0x0

    .line 1202
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7e
    :goto_7e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1203
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1204
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1207
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v5, :cond_bb

    .line 1208
    iget-object v5, v7, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v5

    if-eqz v5, :cond_bb

    .line 1209
    iget-object v6, v7, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b4

    invoke-virtual {v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isModifying()Z

    move-result v5

    if-eqz v5, :cond_bb

    :cond_b4
    const-string v5, "AccountManagerService"

    const-string v6, "Modifying, skip delete account."

    .line 1210
    invoke-static {v5, v6}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    :cond_bb
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_cd

    .line 1216
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v3, v5, :cond_cd

    .line 1218
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7e

    :cond_cd
    if-nez v2, :cond_d7

    .line 1237
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v2

    invoke-virtual {v7, v2}, Lcom/android/server/accounts/AccountManagerService;->getUidsOfInstalledOrUpdatedPackagesAsUser(I)Landroid/util/SparseBooleanArray;

    move-result-object v2

    .line 1239
    :cond_d7
    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-nez v5, :cond_7e

    .line 1243
    invoke-virtual {v13, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-virtual {v12, v4, v3}, Lcom/android/server/accounts/AccountsDb;->deleteMetaByAuthTypeAndUid(Ljava/lang/String;I)Z

    goto :goto_7e

    .line 1253
    :cond_e4
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ec
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1254
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v12, v2, v1}, Lcom/android/server/accounts/AccountsDb;->insertOrReplaceMetaAuthTypeAndUid(Ljava/lang/String;I)J

    goto :goto_ec

    .line 1257
    :cond_10c
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->findAllDeAccounts()Ljava/util/Map;

    move-result-object v0
    :try_end_110
    .catchall {:try_start_6b .. :try_end_110} :catchall_2a1

    .line 1259
    :try_start_110
    iget-object v1, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1260
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1262
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_122
    .catchall {:try_start_110 .. :try_end_122} :catchall_295

    const/4 v1, 0x0

    :goto_123
    :try_start_123
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_230

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1263
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1264
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/accounts/Account;

    .line 1265
    iget-object v2, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20a

    const-string v2, "AccountManagerService"

    .line 1266
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deleting account "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/accounts/Account;->toSafeString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " because type "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\'s registered authenticator no longer exist."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    invoke-virtual {v7, v3, v8}, Lcom/android/server/accounts/AccountManagerService;->getRequestingPackages(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v14

    .line 1272
    invoke-virtual {v7, v3, v8}, Lcom/android/server/accounts/AccountManagerService;->getAccountRemovedReceivers(Landroid/accounts/Account;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/List;

    move-result-object v15

    .line 1273
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->beginTransaction()V
    :try_end_17c
    .catchall {:try_start_123 .. :try_end_17c} :catchall_292

    .line 1275
    :try_start_17c
    invoke-virtual {v12, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteDeAccount(J)Z

    if-eqz v9, :cond_184

    .line 1280
    invoke-virtual {v12, v4, v5}, Lcom/android/server/accounts/AccountsDb;->deleteCeAccount(J)Z

    .line 1282
    :cond_184
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->setTransactionSuccessful()V
    :try_end_187
    .catchall {:try_start_17c .. :try_end_187} :catchall_205

    .line 1284
    :try_start_187
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V
    :try_end_18a
    .catchall {:try_start_187 .. :try_end_18a} :catchall_292

    .line 1288
    :try_start_18a
    sget-object v2, Lcom/android/server/accounts/AccountsDb;->DEBUG_ACTION_AUTHENTICATOR_REMOVE:Ljava/lang/String;

    const-string v16, "accounts"

    move-object/from16 v1, p0

    move-object/from16 v17, v0

    move-object v0, v3

    move-object/from16 v3, v16

    move/from16 v16, v9

    move-object v9, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/accounts/AccountManagerService;->logRecord(Ljava/lang/String;Ljava/lang/String;JLcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    .line 1291
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetaccountTokenCaches(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Lcom/android/server/accounts/TokenCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/accounts/TokenCache;->remove(Landroid/accounts/Account;)V

    .line 1294
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c1
    :goto_1c1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1298
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/server/accounts/AccountManagerService;->isVisible(I)Z

    move-result v3

    if-eqz v3, :cond_1c1

    .line 1299
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Lcom/android/server/accounts/AccountManagerService;->notifyPackage(Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)V

    goto :goto_1c1

    .line 1302
    :cond_1e7
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1eb
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1ff

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1303
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v3

    invoke-virtual {v7, v0, v2, v3}, Lcom/android/server/accounts/AccountManagerService;->sendAccountRemovedBroadcast(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_1fe
    .catchall {:try_start_18a .. :try_end_1fe} :catchall_201

    goto :goto_1eb

    :cond_1ff
    const/4 v1, 0x1

    goto :goto_229

    :catchall_201
    move-exception v0

    const/4 v14, 0x1

    goto/16 :goto_297

    :catchall_205
    move-exception v0

    .line 1284
    :try_start_206
    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->endTransaction()V

    .line 1285
    throw v0

    :cond_20a
    move-object/from16 v17, v0

    move-object v0, v3

    move/from16 v16, v9

    move-object v9, v6

    .line 1306
    iget-object v2, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_224

    .line 1308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1309
    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    :cond_224
    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_229
    move-object v6, v9

    move/from16 v9, v16

    move-object/from16 v0, v17

    goto/16 :goto_123

    :cond_230
    move-object v9, v6

    .line 1314
    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_239
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_278

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1315
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1316
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1317
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v5, v4, [Landroid/accounts/Account;

    const/4 v6, 0x0

    :goto_258
    if-ge v6, v4, :cond_272

    .line 1319
    new-instance v9, Landroid/accounts/Account;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1320
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v9, v13, v3, v14}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_258

    .line 1322
    :cond_272
    iget-object v2, v8, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountCache:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_239

    .line 1324
    :cond_278
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetvisibilityCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v12}, Lcom/android/server/accounts/AccountsDb;->findAllVisibilityValues()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1325
    invoke-static {}, Landroid/accounts/AccountManager;->invalidateLocalAccountsDataCaches()V
    :try_end_286
    .catchall {:try_start_206 .. :try_end_286} :catchall_292

    if-eqz v1, :cond_28f

    .line 1328
    :try_start_288
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1331
    :cond_28f
    monitor-exit v11
    :try_end_290
    .catchall {:try_start_288 .. :try_end_290} :catchall_2a1

    .line 1332
    :try_start_290
    monitor-exit v10
    :try_end_291
    .catchall {:try_start_290 .. :try_end_291} :catchall_2a4

    return-void

    :catchall_292
    move-exception v0

    move v14, v1

    goto :goto_297

    :catchall_295
    move-exception v0

    const/4 v14, 0x0

    :goto_297
    if-eqz v14, :cond_2a0

    .line 1328
    :try_start_299
    invoke-static/range {p1 .. p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserId(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)I

    move-result v1

    invoke-virtual {v7, v1}, Lcom/android/server/accounts/AccountManagerService;->sendAccountsChangedBroadcast(I)V

    .line 1330
    :cond_2a0
    throw v0

    :catchall_2a1
    move-exception v0

    .line 1331
    monitor-exit v11
    :try_end_2a3
    .catchall {:try_start_299 .. :try_end_2a3} :catchall_2a1

    :try_start_2a3
    throw v0

    :catchall_2a4
    move-exception v0

    .line 1332
    monitor-exit v10
    :try_end_2a6
    .catchall {:try_start_2a3 .. :try_end_2a6} :catchall_2a4

    throw v0
.end method

.method public writeAuthTokenIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 6473
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_19

    .line 6475
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountsDb;->findAuthTokensByAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p0

    .line 6476
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetauthTokenCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    if-nez p4, :cond_1f

    .line 6479
    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 6481
    :cond_1f
    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_22
    return-void
.end method

.method public writeUserDataIntoCacheLocked(Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 6446
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-nez p0, :cond_19

    .line 6448
    iget-object p0, p1, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->accountsDb:Lcom/android/server/accounts/AccountsDb;

    invoke-virtual {p0, p2}, Lcom/android/server/accounts/AccountsDb;->findUserExtrasForAccount(Landroid/accounts/Account;)Ljava/util/Map;

    move-result-object p0

    .line 6449
    invoke-static {p1}, Lcom/android/server/accounts/AccountManagerService$UserAccounts;->-$$Nest$fgetuserDataCache(Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    if-nez p4, :cond_1f

    .line 6452
    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    .line 6454
    :cond_1f
    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_22
    return-void
.end method
