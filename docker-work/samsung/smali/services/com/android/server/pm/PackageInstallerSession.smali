.class public Lcom/android/server/pm/PackageInstallerSession;
.super Landroid/content/pm/IPackageInstallerSession$Stub;
.source "PackageInstallerSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PackageInstallerSession$InstallResult;,
        Lcom/android/server/pm/PackageInstallerSession$FileSystemConnector;,
        Lcom/android/server/pm/PackageInstallerSession$UserActionRequirement;,
        Lcom/android/server/pm/PackageInstallerSession$StagedSession;,
        Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;,
        Lcom/android/server/pm/PackageInstallerSession$FileEntry;
    }
.end annotation


# static fields
.field public static final APEX_FILE_EXTENSION:Ljava/lang/String; = ".apex"

.field public static final ATTR_ABI_OVERRIDE:Ljava/lang/String; = "abiOverride"

.field public static final ATTR_APP_ICON:Ljava/lang/String; = "appIcon"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTR_APP_LABEL:Ljava/lang/String; = "appLabel"

.field public static final ATTR_APP_PACKAGE_NAME:Ljava/lang/String; = "appPackageName"

.field public static final ATTR_CHECKSUM_KIND:Ljava/lang/String; = "checksumKind"

.field public static final ATTR_CHECKSUM_VALUE:Ljava/lang/String; = "checksumValue"

.field public static final ATTR_COMMITTED:Ljava/lang/String; = "committed"

.field public static final ATTR_COMMITTED_MILLIS:Ljava/lang/String; = "committedMillis"

.field public static final ATTR_CREATED_MILLIS:Ljava/lang/String; = "createdMillis"

.field public static final ATTR_DATALOADER_ARGUMENTS:Ljava/lang/String; = "dataLoaderArguments"

.field public static final ATTR_DATALOADER_CLASS_NAME:Ljava/lang/String; = "dataLoaderClassName"

.field public static final ATTR_DATALOADER_PACKAGE_NAME:Ljava/lang/String; = "dataLoaderPackageName"

.field public static final ATTR_DATALOADER_TYPE:Ljava/lang/String; = "dataLoaderType"

.field public static final ATTR_DESTROYED:Ljava/lang/String; = "destroyed"

.field public static final ATTR_INITIATING_PACKAGE_NAME:Ljava/lang/String; = "installInitiatingPackageName"

.field public static final ATTR_INSTALLER_ATTRIBUTION_TAG:Ljava/lang/String; = "installerAttributionTag"

.field public static final ATTR_INSTALLER_PACKAGE_NAME:Ljava/lang/String; = "installerPackageName"

.field public static final ATTR_INSTALLER_UID:Ljava/lang/String; = "installerUid"

.field public static final ATTR_INSTALL_FLAGS:Ljava/lang/String; = "installFlags"

.field public static final ATTR_INSTALL_LOCATION:Ljava/lang/String; = "installLocation"

.field public static final ATTR_INSTALL_REASON:Ljava/lang/String; = "installRason"

.field public static final ATTR_IS_APPLIED:Ljava/lang/String; = "isApplied"

.field public static final ATTR_IS_DATALOADER:Ljava/lang/String; = "isDataLoader"

.field public static final ATTR_IS_FAILED:Ljava/lang/String; = "isFailed"

.field public static final ATTR_IS_READY:Ljava/lang/String; = "isReady"

.field public static final ATTR_LENGTH_BYTES:Ljava/lang/String; = "lengthBytes"

.field public static final ATTR_LOCATION:Ljava/lang/String; = "location"

.field public static final ATTR_METADATA:Ljava/lang/String; = "metadata"

.field public static final ATTR_MODE:Ljava/lang/String; = "mode"

.field public static final ATTR_MULTI_PACKAGE:Ljava/lang/String; = "multiPackage"

.field public static final ATTR_NAME:Ljava/lang/String; = "name"

.field public static final ATTR_ORIGINATING_PACKAGE_NAME:Ljava/lang/String; = "installOriginatingPackageName"

.field public static final ATTR_ORIGINATING_UID:Ljava/lang/String; = "originatingUid"

.field public static final ATTR_ORIGINATING_URI:Ljava/lang/String; = "originatingUri"

.field public static final ATTR_PACKAGE_SOURCE:Ljava/lang/String; = "packageSource"

.field public static final ATTR_PARENT_SESSION_ID:Ljava/lang/String; = "parentSessionId"

.field public static final ATTR_PREPARED:Ljava/lang/String; = "prepared"

.field public static final ATTR_REFERRER_URI:Ljava/lang/String; = "referrerUri"

.field public static final ATTR_SEALED:Ljava/lang/String; = "sealed"

.field public static final ATTR_SESSION_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final ATTR_SESSION_ERROR_MESSAGE:Ljava/lang/String; = "errorMessage"

.field public static final ATTR_SESSION_FLAGS:Ljava/lang/String; = "sessionFlags"

.field public static final ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final ATTR_SESSION_STAGE_CID:Ljava/lang/String; = "sessionStageCid"

.field public static final ATTR_SESSION_STAGE_DIR:Ljava/lang/String; = "sessionStageDir"

.field public static final ATTR_SIGNATURE:Ljava/lang/String; = "signature"

.field public static final ATTR_SIZE_BYTES:Ljava/lang/String; = "sizeBytes"

.field public static final ATTR_STAGED_SESSION:Ljava/lang/String; = "stagedSession"

.field public static final ATTR_UPDATED_MILLIS:Ljava/lang/String; = "updatedMillis"

.field public static final ATTR_USER_ID:Ljava/lang/String; = "userId"

.field public static final ATTR_VOLUME_UUID:Ljava/lang/String; = "volumeUuid"

.field public static final EMPTY_CHILD_SESSION_ARRAY:[I

.field public static final EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

.field public static final INCREMENTAL_STORAGE_BLOCKED_TIMEOUT_MS:I = 0x7d0

.field public static final INCREMENTAL_STORAGE_UNHEALTHY_MONITORING_MS:I = 0xea60

.field public static final INCREMENTAL_STORAGE_UNHEALTHY_TIMEOUT_MS:I = 0x1b58

.field public static final INSTALLTOSDCARD_EXTRASIZE:J = 0x500000L

.field public static final INVALID_TARGET_SDK_VERSION:I = 0x7fffffff

.field public static final LOGD:Z = true

.field public static final MSG_INSTALL:I = 0x3

.field public static final MSG_ON_PACKAGE_INSTALLED:I = 0x4

.field public static final MSG_ON_SESSION_SEALED:I = 0x1

.field public static final MSG_SESSION_VALIDATION_FAILURE:I = 0x5

.field public static final MSG_STREAM_VALIDATE_AND_COMMIT:I = 0x2

.field public static final PROPERTY_NAME_INHERIT_NATIVE:Ljava/lang/String; = "pi.inherit_native_on_dont_kill"

.field public static final REMOVE_MARKER_EXTENSION:Ljava/lang/String; = ".removed"

.field public static final SYSTEM_DATA_LOADER_PACKAGE:Ljava/lang/String; = "android"

.field public static final TAG:Ljava/lang/String; = "PackageInstallerSession"

.field public static final TAG_AUTO_REVOKE_PERMISSIONS_MODE:Ljava/lang/String; = "auto-revoke-permissions-mode"

.field public static final TAG_CHILD_SESSION:Ljava/lang/String; = "childSession"

.field public static final TAG_GRANTED_RUNTIME_PERMISSION:Ljava/lang/String; = "granted-runtime-permission"

.field public static final TAG_SESSION:Ljava/lang/String; = "session"

.field public static final TAG_SESSION_CHECKSUM:Ljava/lang/String; = "sessionChecksum"

.field public static final TAG_SESSION_CHECKSUM_SIGNATURE:Ljava/lang/String; = "sessionChecksumSignature"

.field public static final TAG_SESSION_FILE:Ljava/lang/String; = "sessionFile"

.field public static final TAG_WHITELISTED_RESTRICTED_PERMISSION:Ljava/lang/String; = "whitelisted-restricted-permission"

.field public static final USER_ACTION_NOT_NEEDED:I = 0x0

.field public static final USER_ACTION_PENDING_APK_PARSING:I = 0x2

.field public static final USER_ACTION_REQUIRED:I = 0x1

.field public static final sAddedApkFilter:Ljava/io/FileFilter;

.field public static final sAddedFilter:Ljava/io/FileFilter;

.field public static final sRemovedFilter:Ljava/io/FileFilter;


# instance fields
.field public committedMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final createdMillis:J

.field public final defaultContainerGid:I

.field public final mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mBridges:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/FileBridge;",
            ">;"
        }
    .end annotation
.end field

.field public final mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

.field public mChecksums:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;",
            ">;"
        }
    .end annotation
.end field

.field public mChildSessions:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation
.end field

.field public mClientProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProgressLock"
        }
    .end annotation
.end field

.field public final mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mContext:Landroid/content/Context;

.field public volatile mDataLoaderFinished:Z

.field public volatile mDestroyed:Z

.field public final mFds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public mFiles:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/pm/PackageInstallerSession$FileEntry;",
            ">;"
        }
    .end annotation
.end field

.field public mFinalMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mFinalStatus:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHandler:Landroid/os/Handler;

.field public final mHandlerCallback:Landroid/os/Handler$Callback;

.field public mHasDeviceAdminReceiver:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mIncrementalProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProgressLock"
        }
    .end annotation
.end field

.field public mInheritedFilesBase:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

.field public mInstallSource:Lcom/android/server/pm/InstallSource;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public volatile mInstallerUid:I

.field public mInternalProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProgressLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public final mOriginalInstallerPackageName:Ljava/lang/String;

.field public final mOriginalInstallerUid:I

.field public mPackageLite:Landroid/content/pm/parsing/PackageLite;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mParentSessionId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPendingAbandonCallback:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mPermissionsManuallyAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public mPrepared:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProgressLock"
        }
    .end annotation
.end field

.field public final mProgressLock:Ljava/lang/Object;

.field public final mRandom:Ljava/util/Random;

.field public mRemoteStatusReceiver:Landroid/content/IntentSender;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mReportedProgress:F
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProgressLock"
        }
    .end annotation
.end field

.field public mResolvedBaseFile:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mResolvedInheritedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public final mResolvedInstructionSets:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mResolvedNativeLibPaths:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mResolvedStageDir:Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mResolvedStagedFiles:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public mSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSessionApplied:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSessionErrorCode:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSessionErrorMessage:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSessionFailed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

.field public mSessionReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mShouldBeSealed:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mSigningDetails:Landroid/content/pm/SigningDetails;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

.field public mStageDirInUse:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

.field public final mStagingManager:Lcom/android/server/pm/StagingManager;

.field public final mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public mUnknownSourceInstallAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mValidatedTargetSdk:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mVerityFoundForApks:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mVersionCode:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final params:Landroid/content/pm/PackageInstaller$SessionParams;

.field public final sessionId:I

.field public final stageCid:Ljava/lang/String;

.field public final stageDir:Ljava/io/File;

.field public updatedMillis:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final userId:I


# direct methods
.method public static synthetic $r8$lambda$EIoXzbluZ_RWC_7xNPTngWTxt7c(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->lambda$doWriteInternal$0(Landroid/system/Int64Ref;J)V

    return-void
.end method

.method public static synthetic $r8$lambda$HQTHOaa8IhoZCtGtuyG2VxsX874(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->lambda$verifyNonStaged$5(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LTRpVYNCPrYdjHe0-xexNs-wdMk(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->lambda$getDeviceOwnerInstalledPackageMsg$10(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$P718e11eyv9emob-EL8Py0nyj1Y(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->lambda$install$6(Ljava/util/List;Ljava/lang/Void;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QU0I1ScA9J0p4UWU18zYhwz9Zwo(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->lambda$containsApkSession$7(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XOtCjPJeNJQWas1kj6BkNn-9-lE(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerSession;->lambda$abandon$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$dqLvMu_5nhYIB3hKraDVt3Da7PU(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->lambda$getDeviceOwnerInstalledPackageMsg$11(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$mhxB4y3uj1zi40r5o7Iplm3jiNY(Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->lambda$sendPendingUserActionIntentIfNeeded$2(Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$sOPdI6AUoQv8bFc_3KUBU47v140(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->lambda$verifyNonStaged$4(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$syB78UP9xmbue0nN9LKRyj5mAzE(Lcom/android/server/pm/PackageInstallerSession;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->lambda$startUnknownSourceConfirmDialog$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$vCiLXUMH7tbZzlew0gstpidap8w(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->lambda$addChildSessionId$9(Lcom/android/server/pm/PackageInstallerSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$zNi9tiugg7STiYnw7ezZQJC03H0(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->lambda$onSystemDataLoaderUnrecoverable$1(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmChildSessions(Lcom/android/server/pm/PackageInstallerSession;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDestroyed(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInstallLogger(Lcom/android/server/pm/PackageInstallerSession;)Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProgressLock(Lcom/android/server/pm/PackageInstallerSession;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSessionProvider(Lcom/android/server/pm/PackageInstallerSession;)Lcom/android/server/pm/PackageSessionProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDataLoaderFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIncrementalProgress(Lcom/android/server/pm/PackageInstallerSession;F)V
    .registers 2

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertCallerIsOwnerOrRootOrSystem(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystem()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$massertNotChild(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcomputeProgressLocked(Lcom/android/server/pm/PackageInstallerSession;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionSealed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdispatchSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionValidationFailure(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdoWriteInternal(Lcom/android/server/pm/PackageInstallerSession;Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetDataLoader(Lcom/android/server/pm/PackageInstallerSession;I)Landroid/content/pm/IDataLoader;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetRemoteStatusReceiver(Lcom/android/server/pm/PackageInstallerSession;)Landroid/content/IntentSender;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleInstall(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleInstall()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleSessionSealed(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleSessionSealed()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStreamValidateAndCommit(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->handleStreamValidateAndCommit()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$minstall(Lcom/android/server/pm/PackageInstallerSession;)Ljava/util/concurrent/CompletableFuture;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misInTerminalState(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misInstallerDeviceOwnerOrAffiliatedProfileOwner(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monSessionValidationFailure(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSystemDataLoaderUnrecoverable(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->onSystemDataLoaderUnrecoverable()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSessionApplied(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionApplied()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mverify(Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/server/pm/PackageInstallerSession;->sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smsendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 306
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    .line 307
    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    .line 729
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$1;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$1;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    .line 742
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$2;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$2;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    .line 752
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$3;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$3;-><init>()V

    sput-object v0, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;)V
    .registers 48
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageInstallerService$InternalCallback;",
            "Landroid/content/Context;",
            "Lcom/android/server/pm/PackageManagerService;",
            "Lcom/android/server/pm/PackageSessionProvider;",
            "Lcom/android/server/pm/SilentUpdatePolicy;",
            "Landroid/os/Looper;",
            "Lcom/android/server/pm/StagingManager;",
            "III",
            "Lcom/android/server/pm/InstallSource;",
            "Landroid/content/pm/PackageInstaller$SessionParams;",
            "JJ",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/InstallationFile;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;",
            ">;ZZZZ[IIZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p8

    move/from16 v3, p9

    move/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    move-wide/from16 v7, p13

    move-object/from16 v9, p17

    move-object/from16 v10, p18

    move-object/from16 v11, p19

    move-object/from16 v12, p20

    move-object/from16 v13, p25

    .line 961
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/IPackageInstallerSession$Stub;-><init>()V

    .line 229
    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mRandom:Ljava/util/Random;

    .line 350
    new-instance v14, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v14}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 352
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    .line 358
    new-instance v14, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 381
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    const/4 v14, 0x0

    .line 383
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 385
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 388
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    const/high16 v15, -0x40800000    # -1.0f

    .line 390
    iput v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 392
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    const/4 v14, 0x0

    .line 396
    iput-boolean v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 398
    iput-boolean v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 400
    iput-boolean v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    .line 403
    new-instance v15, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v15, v14}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 410
    iput-boolean v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 414
    iput-boolean v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 418
    iput-boolean v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mUnknownSourceInstallAccepted:Z

    .line 429
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    .line 431
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    .line 444
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    .line 485
    new-instance v14, Landroid/util/ArraySet;

    invoke-direct {v14}, Landroid/util/ArraySet;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    .line 506
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    const/4 v14, 0x0

    .line 515
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 696
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    .line 698
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 700
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    .line 702
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    const/4 v14, 0x0

    .line 714
    iput-boolean v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 715
    iput-boolean v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    const v14, 0x7fffffff

    .line 726
    iput v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    .line 773
    new-instance v14, Lcom/android/server/pm/PackageInstallerSession$4;

    invoke-direct {v14, v0}, Lcom/android/server/pm/PackageInstallerSession$4;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    iput-object v14, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandlerCallback:Landroid/os/Handler$Callback;

    move-object/from16 v15, p1

    .line 962
    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    move-object/from16 v15, p2

    .line 963
    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 964
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    if-eqz v1, :cond_c4

    .line 965
    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    goto :goto_c5

    :cond_c4
    const/4 v1, 0x0

    :goto_c5
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    move-object/from16 v1, p4

    .line 966
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    move-object/from16 v1, p5

    .line 967
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 968
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v15, p6

    invoke-direct {v1, v15, v14}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p7

    .line 969
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    .line 971
    iput v2, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 972
    iput v3, v0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 973
    iput v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    .line 974
    iput v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 975
    invoke-static/range {p11 .. p11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 976
    iget-object v1, v5, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    .line 977
    iput-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    .line 978
    iput-wide v7, v0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    .line 979
    iput-wide v7, v0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    move-wide/from16 v4, p15

    .line 980
    iput-wide v4, v0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 981
    iput-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 982
    iput-object v10, v0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    move/from16 v1, p24

    .line 983
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v13, :cond_110

    .line 985
    array-length v1, v13

    const/4 v14, 0x0

    :goto_103
    if-ge v14, v1, :cond_110

    aget v4, v13, v14

    .line 988
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_103

    :cond_110
    const/4 v7, 0x0

    move/from16 v1, p26

    .line 991
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-eqz v11, :cond_13b

    .line 994
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    array-length v4, v11

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 995
    array-length v1, v11

    const/4 v14, 0x0

    :goto_11f
    if-ge v14, v1, :cond_13b

    .line 996
    aget-object v4, v11, v14

    .line 997
    iget-object v5, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v8, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-direct {v8, v14, v4}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v5, v8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_133

    add-int/lit8 v14, v14, 0x1

    goto :goto_11f

    .line 998
    :cond_133
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add a duplicate installation file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13b
    if-eqz v12, :cond_142

    .line 1005
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v1, v12}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 1008
    :cond_142
    iget-boolean v1, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v1, :cond_15b

    const/4 v14, 0x1

    if-nez v9, :cond_14b

    move v1, v14

    goto :goto_14c

    :cond_14b
    const/4 v1, 0x0

    :goto_14c
    if-nez v10, :cond_14f

    goto :goto_150

    :cond_14f
    const/4 v14, 0x0

    :goto_150
    if-eq v1, v14, :cond_153

    goto :goto_15b

    .line 1009
    :cond_153
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15b
    :goto_15b
    move/from16 v1, p21

    .line 1013
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    .line 1014
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    move/from16 v4, p22

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    move/from16 v1, p23

    .line 1015
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    move/from16 v1, p27

    .line 1016
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    move/from16 v1, p29

    .line 1017
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    move/from16 v1, p28

    .line 1018
    iput-boolean v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    move/from16 v1, p30

    .line 1019
    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    if-eqz p31, :cond_17f

    move-object/from16 v1, p31

    goto :goto_181

    :cond_17f
    const-string v1, ""

    .line 1021
    :goto_181
    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 1022
    iget-boolean v1, v6, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v1, :cond_18d

    new-instance v15, Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-direct {v15, v0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    goto :goto_18e

    :cond_18d
    move-object v15, v7

    :goto_18e
    iput-object v15, v0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    .line 1025
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1027
    :try_start_194
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v1

    const-string v6, "com.samsung.android.container"

    const-wide/32 v7, 0x100000

    const/4 v9, 0x0

    invoke-interface {v1, v6, v7, v8, v9}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v1

    .line 1029
    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    iput v1, v0, Lcom/android/server/pm/PackageInstallerSession;->defaultContainerGid:I
    :try_end_1aa
    .catchall {:try_start_194 .. :try_end_1aa} :catchall_23d

    .line 1031
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v1

    if-eqz v1, :cond_1da

    .line 1036
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_1d2

    .line 1041
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation()Z

    move-result v1

    if-eqz v1, :cond_1da

    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v4, "com.android.permission.USE_SYSTEM_DATA_LOADERS"

    invoke-virtual {v1, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1ca

    goto :goto_1da

    .line 1044
    :cond_1ca
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "You need the com.android.permission.USE_SYSTEM_DATA_LOADERS permission to use system data loaders"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_1d2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DataLoader installation of APEX modules is not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1050
    :cond_1da
    :goto_1da
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v1

    if-eqz v1, :cond_1ef

    invoke-static {}, Landroid/os/incremental/IncrementalManager;->isAllowed()Z

    move-result v1

    if-eqz v1, :cond_1e7

    goto :goto_1ef

    .line 1051
    :cond_1e7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Incremental installation not allowed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1054
    :cond_1ef
    :goto_1ef
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerService;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iput-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    .line 1055
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_23c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_23c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v1

    if-nez v1, :cond_23c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-nez v1, :cond_23c

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v1

    if-nez v1, :cond_23c

    .line 1057
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->createInstallTimeInfo(II)Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger$InstallTimeInfo;

    .line 1058
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    const-string v1, "Session"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->updateInstallTag(ILjava/lang/String;)V

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallLogger: PackageInstallerSession(): createInstallTimeInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23c
    return-void

    :catchall_23d
    move-exception v0

    .line 1031
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1032
    throw v0
.end method

.method public static buildAppIconFile(ILjava/io/File;)Ljava/io/File;
    .registers 5

    .line 4977
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "app_icon."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".png"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static checkUserActionRequirement(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/IntentSender;)Z
    .registers 7

    .line 2269
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 2275
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->computeUserActionRequirement()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    .line 2277
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    return v2

    .line 2281
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v3

    if-nez v3, :cond_5a

    const/4 v3, 0x2

    if-ne v0, v3, :cond_5a

    .line 2283
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2284
    :try_start_1f
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    .line 2285
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_57

    const v0, 0x7fffffff

    if-eq v4, v0, :cond_2f

    const/16 v0, 0x1e

    if-ge v4, v0, :cond_2f

    .line 2289
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    return v2

    .line 2293
    :cond_2f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    if-ne v0, v3, :cond_5a

    .line 2294
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    .line 2295
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2294
    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/SilentUpdatePolicy;->isSilentUpdateAllowed(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 2298
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntent(Landroid/content/IntentSender;)V

    return v2

    .line 2301
    :cond_49
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSilentUpdatePolicy:Lcom/android/server/pm/SilentUpdatePolicy;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2302
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 2301
    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/SilentUpdatePolicy;->track(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :catchall_57
    move-exception p0

    .line 2285
    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw p0

    :cond_5a
    :goto_5a
    return v1
.end method

.method public static copyFiles(Ljava/util/List;Ljava/io/File;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3930
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    const-string v3, ".tmp"

    if-ge v2, v1, :cond_1c

    aget-object v4, v0, v2

    .line 3931
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3932
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 3936
    :cond_1c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "PackageInstallerSession"

    if-eqz v1, :cond_db

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    const-string/jumbo v4, "inherit"

    .line 3937
    invoke-static {v4, v3, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 3938
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3939
    invoke-static {v1, v4}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_be

    .line 3943
    :try_start_57
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x1a4

    invoke-static {v5, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_60
    .catch Landroid/system/ErrnoException; {:try_start_57 .. :try_end_60} :catch_a7

    .line 3947
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3948
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Renaming "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3949
    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_8a

    goto :goto_20

    .line 3950
    :cond_8a
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to rename "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3945
    :catch_a7
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to chmod "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3940
    :cond_be
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to copy "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3953
    :cond_db
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Copied "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " files into "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "[",
            "Ljava/lang/String;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1362
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1363
    array-length v1, p1

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_1d

    aget-object v3, p1, v2

    .line 1364
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1365
    invoke-interface {p2, v4}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1366
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_1d
    return-object v0
.end method

.method public static getDeviceOwnerInstalledPackageMsg(Landroid/content/Context;Z)Ljava/lang/String;
    .registers 3

    .line 4909
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_1a

    .line 4911
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda9;-><init>(Landroid/content/Context;)V

    const-string p0, "Core.PACKAGE_UPDATED_BY_DO"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    goto :goto_29

    .line 4913
    :cond_1a
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object p1

    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda10;-><init>(Landroid/content/Context;)V

    const-string p0, "Core.PACKAGE_INSTALLED_BY_DO"

    invoke-virtual {p1, p0, v0}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    :goto_29
    return-object p0
.end method

.method public static getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3874
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3875
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "/."

    .line 3877
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3881
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3882
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3885
    :cond_1f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " outside base: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3878
    :cond_3e
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid path (was relative) : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".removed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1469
    invoke-static {p0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    .line 1470
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid marker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 1

    .line 762
    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public static isIncrementalInstallationAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 1958
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 1959
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_2c

    .line 1960
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_16

    goto :goto_2c

    .line 1964
    :cond_16
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPkg()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackageApi;->isSystem()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 1965
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageStateInternal;->getTransientState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isUpdatedSystemApp()Z

    move-result p0

    if-nez p0, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :cond_2c
    :goto_2c
    return v0
.end method

.method public static isLinkPossible(Ljava/util/List;Ljava/io/File;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3799
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p1

    .line 3800
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 3801
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    .line 3802
    iget-wide v1, v1, Landroid/system/StructStat;->st_dev:J

    iget-wide v3, p1, Landroid/system/StructStat;->st_dev:J
    :try_end_25
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_25} :catch_2c

    cmp-long v1, v1, v3

    if-eqz v1, :cond_d

    return v0

    :cond_2a
    const/4 p0, 0x1

    return p0

    :catch_2c
    move-exception p0

    .line 3807
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to detect if linking possible: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstallerSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isSecureFrpInstallAllowed(Landroid/content/Context;I)Z
    .registers 5

    .line 1939
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 1940
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManagerInternal;->getKnownPackageNames(II)[Ljava/lang/String;

    move-result-object v1

    .line 1942
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    if-eqz p1, :cond_1f

    .line 1944
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v2

    :cond_1f
    const-string p1, "android.permission.INSTALL_PACKAGES"

    .line 1950
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_28

    const/4 v2, 0x1

    :cond_28
    return v2
.end method

.method public static isStagedSessionStateValid(ZZZ)Z
    .registers 3

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    if-eqz p2, :cond_18

    :cond_6
    if-eqz p0, :cond_c

    if-nez p1, :cond_c

    if-eqz p2, :cond_18

    :cond_c
    if-nez p0, :cond_12

    if-eqz p1, :cond_12

    if-eqz p2, :cond_18

    :cond_12
    if-nez p0, :cond_1a

    if-nez p1, :cond_1a

    if-eqz p2, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z
    .registers 2

    .line 766
    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 769
    :cond_8
    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 770
    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android"

    .line 769
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$abandon$8()V
    .registers 4

    const-string v0, "abandonStaged"

    .line 4125
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    .line 4126
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 4127
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->abortCommittedSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    .line 4129
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroy()V

    const/4 v0, 0x0

    const/16 v1, -0x73

    const-string v2, "Session was abandoned"

    .line 4130
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "Session was abandoned because the parent session is abandoned"

    .line 4131
    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$addChildSessionId$9(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 4515
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$containsApkSession$7(Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 1

    .line 3073
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$doWriteInternal$0(Landroid/system/Int64Ref;J)V
    .registers 8

    .line 1641
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_25

    .line 1642
    iget-wide v0, p1, Landroid/system/Int64Ref;->value:J

    sub-long v0, p2, v0

    .line 1643
    iput-wide p2, p1, Landroid/system/Int64Ref;->value:J

    .line 1644
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1645
    :try_start_13
    iget p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    long-to-float p3, v0

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    long-to-float v0, v0

    div-float/2addr p3, v0

    add-float/2addr p2, p3

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 1647
    monitor-exit p1

    goto :goto_25

    :catchall_22
    move-exception p0

    monitor-exit p1
    :try_end_24
    .catchall {:try_start_13 .. :try_end_24} :catchall_22

    throw p0

    :cond_25
    :goto_25
    return-void
.end method

.method public static synthetic lambda$getDeviceOwnerInstalledPackageMsg$10(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x10408a4

    .line 4912
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$getDeviceOwnerInstalledPackageMsg$11(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    const v0, 0x10408a2

    .line 4914
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$install$6(Ljava/util/List;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .registers 5

    if-nez p3, :cond_26

    .line 2746
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->setSessionApplied()V

    .line 2747
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/CompletableFuture;

    .line 2748
    invoke-virtual {p1}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    .line 2749
    iget-object p2, p1, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->session:Lcom/android/server/pm/PackageInstallerSession;

    const/4 p3, 0x1

    iget-object p1, p1, Lcom/android/server/pm/PackageInstallerSession$InstallResult;->extras:Landroid/os/Bundle;

    const-string v0, "Session installed"

    invoke-virtual {p2, p3, v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_9

    .line 2753
    :cond_26
    invoke-virtual {p3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageManagerException;

    .line 2754
    iget p2, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    .line 2755
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2754
    invoke-virtual {p0, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 2756
    iget p2, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2757
    iget p2, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    :cond_4c
    return-void
.end method

.method public static synthetic lambda$onSystemDataLoaderUnrecoverable$1(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;)V
    .registers 9

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 2156
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/DeletePackageHelper;->deletePackageX(Ljava/lang/String;JIIZ)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_24

    .line 2160
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to uninstall package with failed dataloader: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstallerSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method public static synthetic lambda$sendPendingUserActionIntentIfNeeded$2(Landroid/content/IntentSender;Lcom/android/server/pm/PackageInstallerSession;)Z
    .registers 2

    .line 2319
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageInstallerSession;->checkUserActionRequirement(Lcom/android/server/pm/PackageInstallerSession;Landroid/content/IntentSender;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$startUnknownSourceConfirmDialog$3(I)V
    .registers 5

    .line 2379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startUnknownSourceConfirmDialog for session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x10008000

    .line 2382
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2383
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x78

    if-lt p1, v1, :cond_43

    const/16 v1, 0x7c

    if-gt p1, v1, :cond_43

    .line 2387
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/UnknownSourcePhishingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_4a

    .line 2389
    :cond_43
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/internal/app/UnknownSourceConfirmActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_4a
    const-string v1, "android.content.pm.extra.unknown.installtype"

    .line 2392
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2393
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private synthetic lambda$verifyNonStaged$4(ILjava/lang/String;)V
    .registers 7

    .line 2706
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchPendingAbandonCallback()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 2710
    :cond_7
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->hasInstallTimeInfo(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_25

    if-ne p1, v1, :cond_1e

    .line 2712
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v3, "Verified"

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->updateInstallTag(ILjava/lang/String;)V

    goto :goto_25

    .line 2714
    :cond_1e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v2}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->abandonInstallTimeInfo(I)V

    :cond_25
    :goto_25
    if-ne p1, v1, :cond_2b

    .line 2718
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->onVerificationComplete()V

    goto :goto_2e

    .line 2720
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    :goto_2e
    return-void
.end method

.method private synthetic lambda$verifyNonStaged$5(ILjava/lang/String;)V
    .registers 5

    .line 2705
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/pm/PackageInstallerSession;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static maybeRenameFile(Ljava/io/File;Ljava/io/File;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2980
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2981
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_2e

    .line 2982
    :cond_d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " to "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2e
    :goto_2e
    return-void
.end method

.method public static readFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;Ljava/io/File;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;)Lcom/android/server/pm/PackageInstallerSession;
    .registers 60
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const-string/jumbo v2, "sessionId"

    .line 5161
    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v3, "userId"

    .line 5162
    invoke-interface {v0, v1, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v3, "installerPackageName"

    .line 5163
    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "installerAttributionTag"

    .line 5164
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5166
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v5

    const-wide/16 v6, 0x2000

    .line 5167
    invoke-interface {v5, v3, v6, v7, v12}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v5

    const-string/jumbo v6, "installerUid"

    .line 5166
    invoke-interface {v0, v1, v6, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v13

    const-string/jumbo v5, "installInitiatingPackageName"

    .line 5170
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "installOriginatingPackageName"

    .line 5172
    invoke-static {v0, v6}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "createdMillis"

    .line 5173
    invoke-interface {v0, v1, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v16

    const-string/jumbo v7, "updatedMillis"

    .line 5174
    invoke-interface {v0, v1, v7}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    const-string v7, "committedMillis"

    const-wide/16 v8, 0x0

    .line 5175
    invoke-interface {v0, v1, v7, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v18

    const-string/jumbo v7, "sessionStageDir"

    .line 5176
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_63

    .line 5177
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v8

    goto :goto_65

    :cond_63
    move-object/from16 v20, v1

    :goto_65
    const-string/jumbo v7, "sessionStageCid"

    .line 5178
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v7, "prepared"

    const/4 v8, 0x1

    .line 5179
    invoke-interface {v0, v1, v7, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v24

    const-string v7, "committed"

    const/4 v9, 0x0

    .line 5180
    invoke-interface {v0, v1, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v25

    const-string v7, "destroyed"

    .line 5181
    invoke-interface {v0, v1, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v26

    const-string/jumbo v7, "sealed"

    .line 5182
    invoke-interface {v0, v1, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v27

    const-string/jumbo v7, "parentSessionId"

    const/4 v10, -0x1

    .line 5183
    invoke-interface {v0, v1, v7, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v29

    .line 5186
    new-instance v15, Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-direct {v15, v10}, Landroid/content/pm/PackageInstaller$SessionParams;-><init>(I)V

    const-string/jumbo v7, "multiPackage"

    .line 5188
    invoke-interface {v0, v1, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    const-string/jumbo v7, "stagedSession"

    .line 5189
    invoke-interface {v0, v1, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, v15, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    const-string/jumbo v7, "sessionFlags"

    .line 5191
    invoke-interface {v0, v1, v7, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iput v7, v15, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    const-string/jumbo v7, "mode"

    .line 5193
    invoke-interface {v0, v1, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    iput v14, v15, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const-string/jumbo v14, "installFlags"

    .line 5194
    invoke-interface {v0, v1, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    iput v14, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const-string/jumbo v14, "installLocation"

    .line 5195
    invoke-interface {v0, v1, v14}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    iput v14, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    const-string/jumbo v14, "sizeBytes"

    .line 5196
    invoke-interface {v0, v1, v14}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-string v8, "appPackageName"

    .line 5197
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const-string v8, "appIcon"

    .line 5198
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readBitmapAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    const-string v8, "appLabel"

    .line 5199
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    const-string/jumbo v8, "originatingUri"

    .line 5200
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    const-string/jumbo v8, "originatingUid"

    .line 5202
    invoke-interface {v0, v1, v8, v10}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    iput v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    const-string/jumbo v8, "referrerUri"

    .line 5203
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readUriAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    const-string v8, "abiOverride"

    .line 5204
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    const-string/jumbo v8, "volumeUuid"

    .line 5205
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    const-string/jumbo v8, "installRason"

    .line 5206
    invoke-interface {v0, v1, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    const-string/jumbo v8, "packageSource"

    .line 5207
    invoke-interface {v0, v1, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    iput v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    const-string/jumbo v8, "isDataLoader"

    const/4 v9, 0x0

    .line 5209
    invoke-interface {v0, v1, v8, v9}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_158

    .line 5210
    new-instance v8, Landroid/content/pm/DataLoaderParams;

    const-string v9, "dataLoaderType"

    .line 5211
    invoke-interface {v0, v1, v9}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    new-instance v14, Landroid/content/ComponentName;

    const-string v10, "dataLoaderPackageName"

    .line 5213
    invoke-static {v0, v10}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "dataLoaderClassName"

    .line 5214
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v10, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dataLoaderArguments"

    .line 5215
    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v9, v14, v1}, Landroid/content/pm/DataLoaderParams;-><init>(ILandroid/content/ComponentName;Ljava/lang/String;)V

    iput-object v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    :cond_158
    move-object/from16 v1, p6

    .line 5218
    invoke-static {v11, v1}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 5219
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_174

    .line 5220
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v8

    iput-object v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    .line 5221
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    iput-wide v8, v15, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    :cond_174
    const-string/jumbo v1, "isReady"

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 5223
    invoke-interface {v0, v9, v1, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v10, "isFailed"

    .line 5224
    invoke-interface {v0, v9, v10, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    const-string/jumbo v14, "isApplied"

    .line 5225
    invoke-interface {v0, v9, v14, v8}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14

    move/from16 v31, v13

    const-string v13, "errorCode"

    .line 5226
    invoke-interface {v0, v9, v13, v8}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v33

    const-string v8, "errorMessage"

    .line 5228
    invoke-static {v0, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 5230
    invoke-static {v1, v14, v10}, Lcom/android/server/pm/PackageInstallerSession;->isStagedSessionStateValid(ZZZ)Z

    move-result v8

    if-eqz v8, :cond_3bc

    .line 5240
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 5241
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 5243
    new-instance v13, Landroid/util/IntArray;

    invoke-direct {v13}, Landroid/util/IntArray;-><init>()V

    move/from16 p6, v10

    .line 5244
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move/from16 v32, v14

    .line 5245
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14}, Landroid/util/ArrayMap;-><init>()V

    move/from16 v35, v1

    .line 5246
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move/from16 v36, v12

    .line 5247
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v12

    move/from16 v37, v11

    const/4 v11, 0x3

    move-object/from16 v39, v3

    move/from16 v38, v11

    .line 5249
    :goto_1d0
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    move-object/from16 v40, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2f6

    if-ne v3, v11, :cond_1e1

    .line 5250
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v12, :cond_2f6

    :cond_1e1
    if-eq v3, v11, :cond_2de

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1e8

    goto/16 :goto_2de

    .line 5254
    :cond_1e8
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "granted-runtime-permission"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "name"

    if-eqz v3, :cond_1ff

    .line 5255
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5257
    :cond_1ff
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v11, "whitelisted-restricted-permission"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_213

    .line 5258
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5261
    :cond_213
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v11, "auto-revoke-permissions-mode"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_227

    const/4 v3, 0x0

    .line 5262
    invoke-interface {v0, v3, v7}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move/from16 v38, v11

    goto :goto_228

    :cond_227
    const/4 v3, 0x0

    .line 5264
    :goto_228
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v3, "childSession"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move-object/from16 v28, v7

    if-eqz v3, :cond_240

    const/4 v3, -0x1

    const/4 v11, 0x0

    .line 5265
    invoke-interface {v0, v11, v2, v3}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v13, v7}, Landroid/util/IntArray;->add(I)V

    goto :goto_242

    :cond_240
    const/4 v3, -0x1

    const/4 v11, 0x0

    .line 5268
    :goto_242
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v3, "sessionFile"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v7, "signature"

    if-eqz v3, :cond_285

    .line 5269
    new-instance v3, Landroid/content/pm/InstallationFile;

    move-object/from16 v48, v2

    const-string/jumbo v2, "location"

    move/from16 v49, v12

    const/4 v12, 0x0

    .line 5270
    invoke-interface {v0, v11, v2, v12}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v42

    .line 5271
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object v2, v5

    move-object v12, v6

    const-wide/16 v5, -0x1

    move-object/from16 v50, v12

    const-string/jumbo v12, "lengthBytes"

    .line 5272
    invoke-interface {v0, v11, v12, v5, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v44

    const-string/jumbo v5, "metadata"

    .line 5273
    invoke-static {v0, v5}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v46

    .line 5274
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v47

    move-object/from16 v41, v3

    invoke-direct/range {v41 .. v47}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    .line 5269
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_28c

    :cond_285
    move-object/from16 v48, v2

    move-object v2, v5

    move-object/from16 v50, v6

    move/from16 v49, v12

    .line 5276
    :goto_28c
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "sessionChecksum"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c4

    .line 5277
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5278
    new-instance v5, Landroid/content/pm/Checksum;

    const-string v6, "checksumKind"

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 5279
    invoke-interface {v0, v12, v6, v11}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const-string v11, "checksumValue"

    .line 5280
    invoke-static {v0, v11}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v11

    invoke-direct {v5, v6, v11}, Landroid/content/pm/Checksum;-><init>(I[B)V

    .line 5282
    invoke-virtual {v14, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_2c0

    .line 5284
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 5285
    invoke-virtual {v14, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5287
    :cond_2c0
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c5

    :cond_2c4
    const/4 v12, 0x0

    .line 5289
    :goto_2c5
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "sessionChecksumSignature"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e8

    .line 5290
    invoke-static {v0, v4}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5291
    invoke-static {v0, v7}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v4

    .line 5292
    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e8

    :cond_2de
    :goto_2de
    move-object/from16 v48, v2

    move-object v2, v5

    move-object/from16 v50, v6

    move-object/from16 v28, v7

    move/from16 v49, v12

    const/4 v12, 0x0

    :cond_2e8
    :goto_2e8
    move-object v5, v2

    move-object/from16 v7, v28

    move-object/from16 v4, v40

    move-object/from16 v2, v48

    move/from16 v12, v49

    move-object/from16 v6, v50

    const/4 v11, 0x3

    goto/16 :goto_1d0

    :cond_2f6
    move-object v2, v5

    move-object/from16 v50, v6

    const/4 v12, 0x0

    .line 5296
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_30a

    .line 5297
    sget-object v0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    .line 5298
    invoke-interface {v8, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 5301
    :cond_30a
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_312

    .line 5302
    iput-object v9, v15, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    :cond_312
    move/from16 v11, v38

    .line 5305
    iput v11, v15, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    .line 5308
    invoke-virtual {v13}, Landroid/util/IntArray;->size()I

    move-result v0

    if-lez v0, :cond_332

    .line 5309
    invoke-virtual {v13}, Landroid/util/IntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 5310
    invoke-virtual {v13}, Landroid/util/IntArray;->size()I

    move-result v3

    const/4 v9, 0x0

    :goto_327
    if-ge v9, v3, :cond_334

    .line 5311
    invoke-virtual {v13, v9}, Landroid/util/IntArray;->get(I)I

    move-result v4

    aput v4, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_327

    .line 5314
    :cond_332
    sget-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    :cond_334
    move-object/from16 v28, v0

    .line 5318
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_347

    .line 5319
    sget-object v0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_INSTALLATION_FILE_ARRAY:[Landroid/content/pm/InstallationFile;

    invoke-interface {v10, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/pm/InstallationFile;

    move-object/from16 v22, v0

    goto :goto_349

    :cond_347
    move-object/from16 v22, v12

    .line 5323
    :goto_349
    invoke-virtual {v14}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_38b

    .line 5324
    new-instance v0, Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-direct {v0, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 5325
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v9, 0x0

    :goto_35d
    if-ge v9, v3, :cond_388

    .line 5326
    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5327
    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 5328
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 5329
    new-instance v7, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 5330
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Landroid/content/pm/Checksum;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/Checksum;

    invoke-direct {v7, v5, v6}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;-><init>([Landroid/content/pm/Checksum;[B)V

    .line 5329
    invoke-virtual {v0, v4, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v9, v9, 0x1

    goto :goto_35d

    :cond_388
    move-object/from16 v23, v0

    goto :goto_38d

    :cond_38b
    move-object/from16 v23, v12

    .line 5335
    :goto_38d
    iget v0, v15, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    move-object/from16 v1, v39

    move-object/from16 v3, v40

    move-object/from16 v4, v50

    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object v14

    move/from16 v0, v32

    .line 5338
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession;

    move-object v3, v1

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p4

    move/from16 v2, p6

    move-object/from16 v10, p5

    move/from16 v11, v37

    move/from16 v12, v36

    move/from16 v13, v31

    move/from16 v30, v35

    move/from16 v31, v2

    invoke-direct/range {v3 .. v34}, Lcom/android/server/pm/PackageInstallerSession;-><init>(Lcom/android/server/pm/PackageInstallerService$InternalCallback;Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSessionProvider;Lcom/android/server/pm/SilentUpdatePolicy;Landroid/os/Looper;Lcom/android/server/pm/StagingManager;IIILcom/android/server/pm/InstallSource;Landroid/content/pm/PackageInstaller$SessionParams;JJLjava/io/File;Ljava/lang/String;[Landroid/content/pm/InstallationFile;Landroid/util/ArrayMap;ZZZZ[IIZZZILjava/lang/String;)V

    return-object v1

    .line 5231
    :cond_3bc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t restore staged session with invalid state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sendOnPackageInstalled(Landroid/content/Context;Landroid/content/IntentSender;IZILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 17

    move-object v0, p0

    move-object v1, p5

    move v2, p6

    move-object/from16 v3, p8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v5, v2, :cond_30

    if-eqz p3, :cond_30

    if-eqz v3, :cond_16

    const-string v6, "android.intent.extra.REPLACING"

    .line 4871
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_17

    :cond_16
    move v5, v4

    .line 4873
    :goto_17
    invoke-static {p0, v5}, Lcom/android/server/pm/PackageInstallerSession;->getDeviceOwnerInstalledPackageMsg(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    move v6, p4

    .line 4872
    invoke-static {p0, v5, p5, p4}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v5

    if-eqz v5, :cond_30

    const-string/jumbo v6, "notification"

    .line 4878
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    const/16 v7, 0x15

    .line 4879
    invoke-virtual {v6, p5, v7, v5}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 4884
    :cond_30
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "android.content.pm.extra.PACKAGE_NAME"

    .line 4885
    invoke-virtual {v5, v6, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.SESSION_ID"

    move v6, p2

    .line 4886
    invoke-virtual {v5, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4888
    invoke-static {p6}, Landroid/content/pm/PackageManager;->installStatusToPublicStatus(I)I

    move-result v1

    const-string v6, "android.content.pm.extra.STATUS"

    .line 4887
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4890
    invoke-static {p6, p7}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "android.content.pm.extra.STATUS_MESSAGE"

    .line 4889
    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.content.pm.extra.LEGACY_STATUS"

    .line 4891
    invoke-virtual {v5, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v3, :cond_6a

    const-string v1, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    .line 4893
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4895
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    const-string v2, "android.content.pm.extra.OTHER_PACKAGE_NAME"

    .line 4896
    invoke-virtual {v5, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4900
    :cond_6a
    :try_start_6a
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v1

    .line 4901
    invoke-virtual {v1, v4}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 4903
    invoke-virtual {v1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    move-object p2, p0

    move p3, v2

    move-object p4, v5

    move-object p5, v3

    move-object p6, v4

    move-object p7, v6

    move-object/from16 p8, v1

    .line 4902
    invoke-virtual/range {p1 .. p8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_84
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_6a .. :try_end_84} :catch_84

    :catch_84
    return-void
.end method

.method public static sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V
    .registers 12

    .line 4851
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.content.pm.extra.SESSION_ID"

    .line 4852
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.content.pm.extra.STATUS"

    const/4 v0, -0x1

    .line 4853
    invoke-virtual {v3, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "android.intent.extra.INTENT"

    .line 4854
    invoke-virtual {v3, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4856
    :try_start_15
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    const/4 p3, 0x0

    .line 4857
    invoke-virtual {p2, p3}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4859
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    move-object v1, p0

    .line 4858
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_15 .. :try_end_2a} :catch_2a

    :catch_2a
    return-void
.end method

.method public static sendPendingStreaming(Landroid/content/Context;Landroid/content/IntentSender;ILjava/lang/String;)V
    .registers 12

    if-nez p1, :cond_a

    const-string p0, "PackageInstallerSession"

    const-string p1, "Missing receiver for pending streaming status."

    .line 4923
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4927
    :cond_a
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.content.pm.extra.SESSION_ID"

    .line 4928
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, -0x2

    const-string v0, "android.content.pm.extra.STATUS"

    .line 4929
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4930
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v0, "android.content.pm.extra.STATUS_MESSAGE"

    if-nez p2, :cond_3c

    .line 4931
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Staging Image Not Ready ["

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_41

    :cond_3c
    const-string p2, "Staging Image Not Ready"

    .line 4934
    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4937
    :goto_41
    :try_start_41
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    const/4 p3, 0x0

    .line 4938
    invoke-virtual {p2, p3}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 4940
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    move-object v0, p1

    move-object v1, p0

    .line 4939
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_56
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_41 .. :try_end_56} :catch_56

    :catch_56
    return-void
.end method

.method public static writeAutoRevokePermissionsMode(Landroid/util/TypedXmlSerializer;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "auto-revoke-permissions-mode"

    .line 4970
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "mode"

    .line 4971
    invoke-interface {p0, v0, v2, p1}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4972
    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public static writeGrantedRuntimePermissionsLocked(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 4948
    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_1b

    aget-object v2, p1, v1

    const/4 v3, 0x0

    const-string/jumbo v4, "granted-runtime-permission"

    .line 4949
    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "name"

    .line 4950
    invoke-static {p0, v5, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4951
    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1b
    return-void
.end method

.method public static writeWhitelistedRestrictedPermissionsLocked(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_22

    .line 4959
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_22

    const/4 v2, 0x0

    const-string/jumbo v3, "whitelisted-restricted-permission"

    .line 4961
    invoke-interface {p0, v2, v3}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4962
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const-string/jumbo v5, "name"

    invoke-static {p0, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4963
    invoke-interface {p0, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_22
    return-void
.end method


# virtual methods
.method public abandon()V
    .registers 5

    .line 4116
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "abandon"

    .line 4117
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRootOrSystem()V

    .line 4119
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 4121
    monitor-exit v0

    return-void

    :cond_13
    const/4 v1, 0x1

    .line 4123
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 4124
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 4134
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->hasInstallTimeInfo(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 4135
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->abandonInstallTimeInfo(I)V

    .line 4138
    :cond_2c
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    if-eqz v2, :cond_39

    .line 4140
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Ljava/lang/Runnable;

    .line 4141
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 4142
    monitor-exit v0

    return-void

    .line 4144
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_3e

    .line 4145
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_3e
    move-exception p0

    .line 4144
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public final acquireTransactionLock()V
    .registers 3

    .line 4480
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p0

    if-eqz p0, :cond_b

    return-void

    .line 4481
    :cond_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Concurrent access not supported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addChildSessionId(I)V
    .registers 7

    .line 4491
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v0, :cond_149

    .line 4495
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0, p1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    if-eqz v0, :cond_12d

    .line 4500
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-nez v2, :cond_111

    .line 4504
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-ne v3, v1, :cond_e9

    .line 4509
    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v1

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v2}, Landroid/content/pm/PackageInstaller$SessionParams;->getEnableRollback()Z

    move-result v2

    if-ne v1, v2, :cond_c1

    .line 4514
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->containsApkSession()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_39

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_37

    goto :goto_39

    :cond_37
    move v1, v2

    goto :goto_3a

    :cond_39
    :goto_39
    move v1, v3

    .line 4515
    :goto_3a
    new-instance v4, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_4b

    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v4

    if-eqz v4, :cond_4c

    :cond_4b
    move v2, v3

    .line 4516
    :cond_4c
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v3, :cond_5f

    if-eqz v1, :cond_5f

    if-nez v2, :cond_57

    goto :goto_5f

    .line 4517
    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Mix of APK and APEX is not supported for non-staged multi-package session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4522
    :cond_5f
    :goto_5f
    :try_start_5f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 4523
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 4525
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->canBeAddedAsChild(I)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 4529
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_70
    .catchall {:try_start_5f .. :try_end_70} :catchall_b9

    .line 4530
    :try_start_70
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    const-string v2, "addChildSessionId"

    .line 4531
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 4533
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_88

    .line 4535
    monitor-exit v1
    :try_end_81
    .catchall {:try_start_70 .. :try_end_81} :catchall_9a

    .line 4541
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4542
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    return-void

    .line 4537
    :cond_88
    :try_start_88
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 4538
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4539
    monitor-exit v1
    :try_end_93
    .catchall {:try_start_88 .. :try_end_93} :catchall_9a

    .line 4541
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4542
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    return-void

    :catchall_9a
    move-exception p1

    .line 4539
    :try_start_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    :try_start_9c
    throw p1

    .line 4526
    :cond_9d
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add child session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as it is in an invalid state."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_b9
    .catchall {:try_start_9c .. :try_end_b9} :catchall_b9

    :catchall_b9
    move-exception p1

    .line 4541
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4542
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4543
    throw p1

    .line 4510
    :cond_c1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multipackage Inconsistency: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and session "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " have inconsistent rollback settings"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4505
    :cond_e9
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multipackage Inconsistency: session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and session "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " have inconsistent staged settings"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4501
    :cond_111
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Multi-session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be a child."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4497
    :cond_12d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to add child session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as it does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4492
    :cond_149
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Single-session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " can\'t have child."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addClientProgress(F)V
    .registers 4

    .line 1276
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1277
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1278
    :try_start_6
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    add-float/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 1279
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public addFile(ILjava/lang/String;J[B[B)V
    .registers 20

    move-object v0, p0

    move-object v7, p2

    .line 4172
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v2, "com.android.permission.USE_INSTALLER_V2"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4173
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 4177
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStreamingInstallation()Z

    move-result v1

    if-eqz v1, :cond_30

    if-nez p1, :cond_19

    goto :goto_30

    .line 4179
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-incremental installation only supports /data/app placement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    :goto_30
    if-eqz p5, :cond_95

    .line 4188
    invoke-static {p2}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 4192
    iget-object v8, v0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 4193
    :try_start_3b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    const-string v1, "addFile"

    .line 4194
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 4196
    iget-object v9, v0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v10, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v11

    new-instance v12, Landroid/content/pm/InstallationFile;

    move-object v0, v12

    move v1, p1

    move-object v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    invoke-direct {v10, v11, v12}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    invoke-virtual {v9, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 4200
    monitor-exit v8

    return-void

    .line 4198
    :cond_64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File already added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_7b
    move-exception v0

    .line 4200
    monitor-exit v8
    :try_end_7d
    .catchall {:try_start_3b .. :try_end_7d} :catchall_7b

    throw v0

    .line 4189
    :cond_7e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4184
    :cond_95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataLoader installation requires valid metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4174
    :cond_ac
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot add files to non-data loader installation session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final allocateSessionIdLockedtemp()Ljava/lang/String;
    .registers 3

    .line 1886
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRandom:Ljava/util/Random;

    const v0, 0x7ffffffe

    invoke-virtual {p0, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 1887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "smdl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ".tmp"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3708
    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V

    .line 3709
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p2}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result p0

    if-eqz p0, :cond_18

    return-void

    .line 3710
    :cond_18
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p2, -0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " signatures are inconsistent"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final assertCallerIsOwnerOrRoot()V
    .registers 4

    .line 1732
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_22

    .line 1733
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, p0, :cond_b

    goto :goto_22

    .line 1734
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session does not belong to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_22
    :goto_22
    return-void
.end method

.method public final assertCallerIsOwnerOrRootOrSystem()V
    .registers 4

    .line 1743
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_26

    .line 1744
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-eq v0, p0, :cond_26

    const/16 p0, 0x3e8

    if-ne v0, p0, :cond_f

    goto :goto_26

    .line 1746
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session does not belong to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method public final assertCallerIsOwnerRootOrVerifier()V
    .registers 4

    .line 1715
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eqz v0, :cond_33

    .line 1716
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v0, v1, :cond_b

    goto :goto_33

    .line 1719
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_VERIFICATION_AGENT"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1c

    return-void

    .line 1724
    :cond_1c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session does not belong to uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    :goto_33
    return-void
.end method

.method public final assertCanWrite(Z)V
    .registers 4

    .line 1498
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1502
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1503
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    const-string v1, "assertCanWrite"

    .line 1504
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 1505
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1a

    if-eqz p1, :cond_19

    const-string p1, "Reverse mode"

    .line 1507
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertShellOrSystemCalling(Ljava/lang/String;)V

    :cond_19
    return-void

    :catchall_1a
    move-exception p0

    .line 1505
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p0

    .line 1499
    :cond_1d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot write regular files in a data loader installation session."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertNoWriteFileTransfersOpenLocked()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1756
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "Files still open"

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RevocableFileDescriptor;

    .line 1757
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->isRevoked()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_6

    .line 1758
    :cond_1b
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1761
    :cond_21
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/FileBridge;

    .line 1762
    invoke-virtual {v0}, Landroid/os/FileBridge;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_27

    .line 1763
    :cond_3a
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_40
    return-void
.end method

.method public final assertNotChild(Ljava/lang/String;)V
    .registers 4

    .line 4086
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 4087
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " can\'t be called on a child session, id="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " parentId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4088
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final assertNotLocked(Ljava/lang/String;)V
    .registers 3

    .line 1193
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 1194
    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is holding mLock"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3718
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " inconsistent with "

    const/4 v2, -0x2

    if-eqz v0, :cond_65

    .line 3722
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_3c

    .line 3723
    :cond_18
    new-instance p3, Lcom/android/server/pm/PackageManagerException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " specified package "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p3

    .line 3727
    :cond_3c
    :goto_3c
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    cmp-long p2, v3, p3

    if-nez p2, :cond_43

    return-void

    .line 3728
    :cond_43
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " version code "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p2

    .line 3719
    :cond_65
    new-instance p3, Lcom/android/server/pm/PackageManagerException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " package "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p3
.end method

.method public final assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1214
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1215
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    if-nez p0, :cond_c

    return-void

    .line 1216
    :cond_c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after commit"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1222
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-eqz v0, :cond_20

    .line 1225
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez p0, :cond_9

    return-void

    .line 1226
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after destruction"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1223
    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before prepared"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1206
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 1207
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-nez p0, :cond_8

    return-void

    .line 1208
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not allowed after sealing"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertSealed(Ljava/lang/String;)V
    .registers 3

    .line 1199
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 1200
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before sealing"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final assertShellOrSystemCalling(Ljava/lang/String;)V
    .registers 3

    .line 1487
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    if-eqz p0, :cond_26

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_26

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_f

    goto :goto_26

    .line 1493
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " only supported from shell or system"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method public final calculateInstalledSize()J
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3752
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3754
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v1

    .line 3755
    invoke-virtual {v1}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v1

    .line 3758
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_c5

    .line 3763
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/content/pm/parsing/ApkLite;

    .line 3765
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v2, 0x0

    .line 3768
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_59

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 3769
    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v7, v6}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_45

    goto :goto_30

    .line 3770
    :cond_45
    invoke-static {v6}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_53

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 3771
    :cond_53
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_30

    .line 3773
    :cond_59
    iget-object v4, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-wide v15, v2

    :goto_60
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_89

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 3774
    iget-object v3, v0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    goto :goto_60

    .line 3775
    :cond_75
    invoke-static {v2}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_60

    .line 3776
    :cond_83
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    add-long/2addr v15, v2

    goto :goto_60

    .line 3781
    :cond_89
    new-instance v14, Landroid/content/pm/parsing/PackageLite;

    const/4 v3, 0x0

    invoke-virtual {v5}, Landroid/content/pm/parsing/ApkLite;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3782
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, [Ljava/lang/String;

    const/4 v11, 0x0

    invoke-virtual {v5}, Landroid/content/pm/parsing/ApkLite;->getTargetSdkVersion()I

    move-result v12

    const/4 v13, 0x0

    const/4 v1, 0x0

    move-object v2, v14

    move-wide/from16 v17, v15

    move-object v15, v14

    move-object v14, v1

    invoke-direct/range {v2 .. v14}, Landroid/content/pm/parsing/PackageLite;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;[Ljava/lang/String;[Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[II[Ljava/util/Set;[Ljava/util/Set;)V

    .line 3785
    :try_start_b0
    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {v15, v0}, Lcom/android/internal/content/InstallLocationUtils;->calculateInstalledSize(Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b0 .. :try_end_b8} :catch_bb

    add-long v0, v0, v17

    return-wide v0

    :catch_bb
    move-exception v0

    .line 3787
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x2

    const-string v3, "Failed to calculate install size"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3759
    :cond_c5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v2

    .line 3760
    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final canBeAddedAsChild(I)Z
    .registers 4

    .line 4472
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4473
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_d

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v1, p1, :cond_1b

    :cond_d
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4474
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1b

    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez p0, :cond_1b

    const/4 p0, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x0

    :goto_1c
    monitor-exit v0

    return p0

    :catchall_1e
    move-exception p0

    .line 4476
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method public final checkUnknownSourcePackage(Ljava/io/File;)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2327
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "PackageInstallerSession"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_62

    .line 2329
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 2331
    :try_start_13
    new-instance v7, Landroid/content/pm/PackageParser;

    invoke-direct {v7}, Landroid/content/pm/PackageParser;-><init>()V

    invoke-virtual {v7, v1, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v7

    move v8, v4

    .line 2332
    :goto_1d
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_45

    .line 2333
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Service;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-eqz v9, :cond_42

    .line 2334
    iget-object v9, v7, Landroid/content/pm/PackageParser$Package;->services:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/PackageParser$Service;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Service;->info:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 2337
    :cond_45
    iget-object v8, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 2338
    iget-object v1, v7, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_4b} :catch_4d

    move-object v10, v6

    goto :goto_65

    .line 2342
    :catch_4d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while parsing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_62
    const/4 v8, -0x1

    move-object v1, v5

    move-object v10, v1

    :goto_65
    move v15, v8

    .line 2350
    :try_start_66
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    if-eqz v6, :cond_78

    invoke-virtual {v6}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 2351
    iget-object v6, v0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v6}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v6

    move-object v11, v6

    goto :goto_79

    :cond_78
    move-object v11, v5

    .line 2353
    :goto_79
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v8, v6, [Ljava/lang/String;

    .line 2354
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2355
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v9, v1, [Ljava/lang/String;

    .line 2356
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2357
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    if-eqz v1, :cond_98

    .line 2358
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_9a

    :cond_98
    move-object/from16 v16, v5

    .line 2359
    :goto_9a
    iget-object v1, v0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    if-eqz v1, :cond_a4

    .line 2360
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_a4
    move-object/from16 v17, v5

    .line 2362
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v12, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    iget-object v13, v0, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-interface/range {v6 .. v17}, Landroid/content/pm/IASKSManager;->checkUnknownSourcePackage(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUnknownSourcePackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_cc} :catch_ce

    move v4, v0

    goto :goto_e3

    :catch_ce
    move-exception v0

    .line 2371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during checkUnknownSourcePackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_e3
    return v4
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    .line 4057
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    return-void
.end method

.method public final closeInternal(Z)V
    .registers 3

    .line 4062
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_8

    .line 4064
    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 4067
    :cond_8
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    .line 4068
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_18

    if-nez p1, :cond_17

    .line 4071
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    :cond_17
    return-void

    :catchall_18
    move-exception p0

    .line 4068
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public commit(Landroid/content/IntentSender;Z)V
    .registers 8

    .line 1770
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_41

    .line 1776
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 1779
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result p1

    if-eqz p1, :cond_3d

    .line 1780
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 1782
    :try_start_17
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_1f
    if-ltz v1, :cond_34

    .line 1785
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p2}, Lcom/android/server/pm/PackageInstallerSession;->markAsSealed(Landroid/content/IntentSender;Z)Z

    move-result v3

    if-nez v3, :cond_31

    move v0, v2

    :cond_31
    add-int/lit8 v1, v1, -0x1

    goto :goto_1f

    :cond_34
    if-eqz v0, :cond_38

    .line 1790
    monitor-exit p1

    return-void

    .line 1792
    :cond_38
    monitor-exit p1

    goto :goto_3d

    :catchall_3a
    move-exception p0

    monitor-exit p1
    :try_end_3c
    .catchall {:try_start_17 .. :try_end_3c} :catchall_3a

    throw p0

    .line 1795
    :cond_3d
    :goto_3d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionSealed()V

    return-void

    .line 1771
    :cond_41
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is a child of multi-package session "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1773
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " and may not be committed directly."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final computeProgressLocked(Z)V
    .registers 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProgressLock"
        }
    .end annotation

    .line 1284
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_22

    .line 1290
    :cond_14
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalProgress:F

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    sub-float v3, v0, v3

    float-to-double v3, v3

    cmpl-double v3, v3, v1

    if-ltz v3, :cond_3a

    .line 1295
    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    goto :goto_3a

    .line 1285
    :cond_22
    :goto_22
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const v3, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v5

    .line 1286
    invoke-static {v3, v4, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    add-float/2addr v0, v3

    iput v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    :cond_3a
    :goto_3a
    if-nez p1, :cond_46

    .line 1300
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    sub-float/2addr p1, v0

    float-to-double v3, p1

    cmpl-double p1, v3, v1

    if-ltz p1, :cond_4f

    .line 1301
    :cond_46
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mReportedProgress:F

    .line 1302
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionProgressChanged(Lcom/android/server/pm/PackageInstallerSession;F)V

    :cond_4f
    return-void
.end method

.method public final computeUserActionRequirement()I
    .registers 14
    .annotation build Lcom/android/server/pm/PackageInstallerSession$UserActionRequirement;
    .end annotation

    .line 875
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 876
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 877
    monitor-exit v0

    return v2

    .line 879
    :cond_a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 880
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    .line 881
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f7

    .line 883
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v4, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v4, v4, 0x400

    const/4 v5, 0x1

    if-nez v4, :cond_1f

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    if-ne v0, v5, :cond_1d

    goto :goto_1f

    :cond_1d
    move v0, v2

    goto :goto_20

    :cond_1f
    :goto_1f
    move v0, v5

    :goto_20
    if-eqz v0, :cond_23

    return v5

    .line 891
    :cond_23
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string v4, "android.permission.INSTALL_PACKAGES"

    .line 892
    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 893
    invoke-interface {v0, v4, v6}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_35

    move v4, v5

    goto :goto_36

    :cond_35
    move v4, v2

    :goto_36
    const-string v6, "android.permission.INSTALL_SELF_UPDATES"

    .line 895
    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 896
    invoke-interface {v0, v6, v7}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_42

    move v6, v5

    goto :goto_43

    :cond_42
    move v6, v2

    :goto_43
    const-string v7, "android.permission.INSTALL_PACKAGE_UPDATES"

    .line 898
    iget v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 899
    invoke-interface {v0, v7, v8}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_4f

    move v7, v5

    goto :goto_50

    :cond_4f
    move v7, v2

    :goto_50
    const-string v8, "android.permission.UPDATE_PACKAGES_WITHOUT_USER_ACTION"

    .line 901
    iget v9, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v0, v8, v9}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_5c

    move v8, v5

    goto :goto_5d

    :cond_5c
    move v8, v2

    :goto_5d
    const-string v9, "android.permission.INSTALL_DPC_PACKAGES"

    .line 904
    iget v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {v0, v9, v10}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_69

    move v9, v5

    goto :goto_6a

    :cond_69
    move v9, v2

    :goto_6a
    const-wide/16 v10, 0x0

    .line 907
    iget v12, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v0, v1, v10, v11, v12}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7e

    .line 908
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v11

    if-eqz v11, :cond_7c

    goto :goto_7e

    :cond_7c
    move v11, v2

    goto :goto_7f

    :cond_7e
    :goto_7e
    move v11, v5

    :goto_7f
    const/4 v12, 0x0

    if-eqz v11, :cond_87

    .line 910
    invoke-interface {v0, v1}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v1

    goto :goto_88

    :cond_87
    move-object v1, v12

    :goto_88
    if-eqz v1, :cond_8e

    .line 913
    invoke-virtual {v1}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v12

    :cond_8e
    if-eqz v11, :cond_9c

    .line 916
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    move v1, v5

    goto :goto_9d

    :cond_9c
    move v1, v2

    .line 917
    :goto_9d
    iget v12, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-ne v10, v12, :cond_a3

    move v10, v5

    goto :goto_a4

    :cond_a3
    move v10, v2

    :goto_a4
    if-nez v4, :cond_b5

    if-eqz v7, :cond_aa

    if-nez v11, :cond_b5

    :cond_aa
    if-eqz v6, :cond_ae

    if-nez v10, :cond_b5

    :cond_ae
    if-eqz v9, :cond_b3

    if-eqz v3, :cond_b3

    goto :goto_b5

    :cond_b3
    move v3, v2

    goto :goto_b6

    :cond_b5
    :goto_b5
    move v3, v5

    .line 922
    :goto_b6
    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    if-nez v4, :cond_bc

    move v4, v5

    goto :goto_bd

    :cond_bc
    move v4, v2

    .line 923
    :goto_bd
    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_c5

    move v6, v5

    goto :goto_c6

    :cond_c5
    move v6, v2

    :goto_c6
    if-nez v3, :cond_d5

    if-nez v4, :cond_d5

    if-nez v6, :cond_d5

    .line 928
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v3

    if-eqz v3, :cond_d3

    goto :goto_d5

    :cond_d3
    move v3, v2

    goto :goto_d6

    :cond_d5
    :goto_d5
    move v3, v5

    :goto_d6
    if-eqz v3, :cond_d9

    return v2

    .line 934
    :cond_d9
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v0, v2, v3, v4}, Lcom/android/server/pm/Computer;->isInstallDisabledForPackage(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_e8

    return v5

    .line 940
    :cond_e8
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_f6

    if-eqz v8, :cond_f6

    if-nez v1, :cond_f5

    if-eqz v10, :cond_f6

    :cond_f5
    return v0

    :cond_f6
    return v5

    :catchall_f7
    move-exception p0

    .line 881
    :try_start_f8
    monitor-exit v0
    :try_end_f9
    .catchall {:try_start_f8 .. :try_end_f9} :catchall_f7

    throw p0
.end method

.method public containsApkSession()Z
    .registers 2

    .line 3073
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final copyFileUsingStream(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    .line 1870
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_28

    .line 1871
    :try_start_6
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_23

    const/16 p0, 0x400

    :try_start_d
    new-array p0, p0, [B

    .line 1874
    :goto_f
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_1a

    const/4 v1, 0x0

    .line 1875
    invoke-virtual {p1, p0, v1, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_21

    goto :goto_f

    .line 1879
    :cond_1a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1881
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_21
    move-exception p0

    goto :goto_2c

    :catchall_23
    move-exception p1

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    goto :goto_2c

    :catchall_28
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    move-object p1, v0

    :goto_2c
    if-eqz v0, :cond_31

    .line 1879
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_31
    if-eqz p1, :cond_36

    .line 1881
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 1882
    :cond_36
    throw p0
.end method

.method public final createOatDirs(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3890
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3892
    :try_start_10
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/pm/Installer;->createOatDir(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_10 .. :try_end_19} :catch_1a

    goto :goto_4

    :catch_1a
    move-exception p0

    .line 3894
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerException;->from(Lcom/android/server/pm/Installer$InstallerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0

    :cond_20
    return-void
.end method

.method public final createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1478
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object p0

    invoke-static {p1}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1479
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1480
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_18
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception p0

    .line 1482
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final createRevocableFdInternal(Landroid/os/RevocableFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1567
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result p2

    .line 1568
    new-instance v0, Ljava/io/FileDescriptor;

    invoke-direct {v0}, Ljava/io/FileDescriptor;-><init>()V

    .line 1569
    invoke-virtual {v0, p2}, Ljava/io/FileDescriptor;->setInt$(I)V

    .line 1570
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Landroid/os/RevocableFileDescriptor;->init(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 1571
    invoke-virtual {p1}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public final destroy()V
    .registers 2

    .line 4740
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    .line 4741
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 4742
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    goto :goto_b

    :cond_1b
    return-void
.end method

.method public final destroyInternal()V
    .registers 4

    .line 4751
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 4752
    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    .line 4753
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v2, :cond_e

    .line 4754
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    .line 4757
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RevocableFileDescriptor;

    .line 4758
    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    goto :goto_14

    .line 4760
    :cond_24
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/FileBridge;

    .line 4761
    invoke-virtual {v2}, Landroid/os/FileBridge;->forceClose()V

    goto :goto_2a

    .line 4763
    :cond_3a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    const/4 v2, 0x0

    .line 4764
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    .line 4765
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_4 .. :try_end_40} :catchall_6f

    if-eqz v1, :cond_45

    .line 4768
    :try_start_42
    invoke-virtual {v1}, Landroid/os/incremental/IncrementalFileStorages;->cleanUpAndMarkComplete()V

    .line 4770
    :cond_45
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_58

    .line 4771
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4772
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/Installer;->rmPackageDir(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_58
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_42 .. :try_end_58} :catch_58

    .line 4777
    :catch_58
    :cond_58
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v0, :cond_6e

    .line 4778
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4780
    :try_start_60
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z
    :try_end_65
    .catchall {:try_start_60 .. :try_end_65} :catchall_69

    .line 4782
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_6e

    :catchall_69
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4783
    throw p0

    :cond_6e
    :goto_6e
    return-void

    :catchall_6f
    move-exception p0

    .line 4765
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public final dispatchPendingAbandonCallback()Z
    .registers 5

    .line 4100
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4101
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    const/4 v1, 0x0

    .line 4102
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    .line 4103
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Ljava/lang/Runnable;

    const/4 v3, 0x0

    .line 4104
    iput-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPendingAbandonCallback:Ljava/lang/Runnable;

    .line 4105
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_19

    if-eqz v2, :cond_18

    .line 4107
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_18
    return v1

    :catchall_19
    move-exception p0

    .line 4105
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 4599
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 4601
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4602
    :try_start_6
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    .line 4603
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    .line 4604
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_5e

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    move v1, v0

    goto :goto_12

    :cond_11
    move v1, p2

    :goto_12
    if-eqz p3, :cond_1c

    const-string v2, "android.intent.extra.REPLACING"

    .line 4610
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1d

    :cond_1c
    move p2, v0

    :cond_1d
    if-eqz v1, :cond_36

    if-eqz p2, :cond_36

    .line 4611
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p2, p2, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {p2}, Lcom/android/server/pm/PackageInstallerService;->okToSendBroadcasts()Z

    move-result p2

    if-eqz p2, :cond_36

    .line 4612
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p3

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {p2, p3, v0}, Lcom/android/server/pm/PackageManagerService;->sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;I)V

    .line 4616
    :cond_36
    sget-boolean p2, Lcom/samsung/android/rune/PMRune;->PM_UNKNOWN_SOURCE_ENABLED:Z

    if-eqz p2, :cond_4f

    .line 4617
    iget-boolean p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnknownSourceInstallAccepted:Z

    if-eqz p2, :cond_4f

    if-eqz v1, :cond_48

    .line 4619
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageManagerService;->addUnknownSourceApp(Ljava/lang/String;)V

    goto :goto_4f

    .line 4621
    :cond_48
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/android/server/pm/PackageManagerService;->removeUnknownSourceApp(Ljava/lang/String;)V

    .line 4627
    :cond_4f
    :goto_4f
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p2, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionFinished(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4628
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 4629
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->logDataLoaderInstallationSession(I)V

    :cond_5d
    return-void

    :catchall_5e
    move-exception p0

    .line 4604
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    throw p0
.end method

.method public final dispatchSessionSealed()V
    .registers 2

    .line 1803
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final dispatchSessionValidationFailure(ILjava/lang/String;)V
    .registers 5

    .line 4447
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 4448
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final dispatchStreamValidateAndCommit()V
    .registers 2

    .line 1815
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    .line 1581
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1582
    :try_start_9
    sget-boolean v7, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    const/4 v9, 0x0

    if-eqz v7, :cond_1b

    .line 1583
    new-instance v7, Landroid/os/RevocableFileDescriptor;

    invoke-direct {v7}, Landroid/os/RevocableFileDescriptor;-><init>()V

    .line 1585
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v10, v7

    move-object v11, v9

    goto :goto_27

    .line 1588
    :cond_1b
    new-instance v7, Landroid/os/FileBridge;

    invoke-direct {v7}, Landroid/os/FileBridge;-><init>()V

    .line 1589
    iget-object v8, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v7

    move-object v10, v9

    .line 1591
    :goto_27
    monitor-exit v6
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_13a

    .line 1593
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v7, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v6, v7}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->hasInstallTimeInfo(I)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 1594
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v7, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v8, "Write"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->updateInstallTag(ILjava/lang/String;)V

    .line 1599
    :cond_3b
    :try_start_3b
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 1604
    sget-boolean v6, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v6, :cond_4f

    .line 1605
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object v7

    invoke-direct {v6, v7, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_5e

    .line 1607
    :cond_4f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_53
    .catch Landroid/system/ErrnoException; {:try_start_3b .. :try_end_53} :catch_134

    .line 1609
    :try_start_53
    new-instance v8, Ljava/io/File;

    iget-object v12, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v8, v12, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_118

    .line 1611
    :try_start_5a
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v6, v8

    .line 1615
    :goto_5e
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget v7, Landroid/system/OsConstants;->O_CREAT:I

    sget v8, Landroid/system/OsConstants;->O_WRONLY:I

    or-int/2addr v7, v8

    const/16 v8, 0x1a4

    invoke-virtual {p0, v0, v7, v8}, Lcom/android/server/pm/PackageInstallerSession;->openTargetInternal(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 1617
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    .line 1621
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_97

    cmp-long v0, v4, v6

    if-lez v0, :cond_97

    .line 1622
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v8, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 1623
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v13, v13, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 1624
    invoke-static {v13}, Lcom/android/internal/content/InstallLocationUtils;->translateAllocateFlags(I)I

    move-result v13

    .line 1622
    invoke-virtual {v0, v8, v4, v5, v13}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;JI)V

    :cond_97
    cmp-long v0, v2, v6

    if-lez v0, :cond_a4

    .line 1628
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget v8, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, v2, v3, v8}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_a4
    .catch Landroid/system/ErrnoException; {:try_start_5a .. :try_end_a4} :catch_134

    :cond_a4
    if-eqz p6, :cond_104

    .line 1637
    :try_start_a6
    new-instance v0, Landroid/system/Int64Ref;

    invoke-direct {v0, v6, v7}, Landroid/system/Int64Ref;-><init>(J)V

    .line 1638
    invoke-virtual/range {p6 .. p6}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    const/4 v6, 0x0

    new-instance v7, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;

    invoke-direct {v7}, Lcom/android/server/am/BatteryExternalStatsWorker$$ExternalSyntheticLambda4;-><init>()V

    new-instance v8, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda6;

    invoke-direct {v8, p0, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/system/Int64Ref;)V

    move-wide/from16 v4, p4

    invoke-static/range {v2 .. v8}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;JLandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/FileUtils$ProgressListener;)J
    :try_end_c3
    .catchall {:try_start_a6 .. :try_end_c3} :catchall_e3

    .line 1651
    :try_start_c3
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1652
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1656
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_cc
    .catch Landroid/system/ErrnoException; {:try_start_c3 .. :try_end_cc} :catch_134

    .line 1657
    :try_start_cc
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_d6

    .line 1658
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_de

    .line 1660
    :cond_d6
    invoke-virtual {v11}, Landroid/os/FileBridge;->forceClose()V

    .line 1661
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1663
    :goto_de
    monitor-exit v2

    return-object v9

    :catchall_e0
    move-exception v0

    monitor-exit v2
    :try_end_e2
    .catchall {:try_start_cc .. :try_end_e2} :catchall_e0

    :try_start_e2
    throw v0

    :catchall_e3
    move-exception v0

    .line 1651
    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1652
    invoke-static/range {p6 .. p6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1656
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_ed
    .catch Landroid/system/ErrnoException; {:try_start_e2 .. :try_end_ed} :catch_134

    .line 1657
    :try_start_ed
    sget-boolean v3, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v3, :cond_f7

    .line 1658
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_ff

    .line 1660
    :cond_f7
    invoke-virtual {v11}, Landroid/os/FileBridge;->forceClose()V

    .line 1661
    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1663
    :goto_ff
    monitor-exit v2
    :try_end_100
    .catchall {:try_start_ed .. :try_end_100} :catchall_101

    .line 1664
    :try_start_100
    throw v0
    :try_end_101
    .catch Landroid/system/ErrnoException; {:try_start_100 .. :try_end_101} :catch_134

    :catchall_101
    move-exception v0

    .line 1663
    :try_start_102
    monitor-exit v2
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_101

    :try_start_103
    throw v0

    .line 1666
    :cond_104
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_10d

    .line 1667
    invoke-virtual {p0, v10, v12}, Lcom/android/server/pm/PackageInstallerSession;->createRevocableFdInternal(Landroid/os/RevocableFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    .line 1669
    :cond_10d
    invoke-virtual {v11, v12}, Landroid/os/FileBridge;->setTargetFile(Landroid/os/ParcelFileDescriptor;)V

    .line 1670
    invoke-virtual {v11}, Landroid/os/FileBridge;->start()V

    .line 1671
    invoke-virtual {v11}, Landroid/os/FileBridge;->getClientSocket()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :catchall_118
    move-exception v0

    .line 1611
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1612
    throw v0

    .line 1600
    :cond_11d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_134
    .catch Landroid/system/ErrnoException; {:try_start_103 .. :try_end_134} :catch_134

    :catch_134
    move-exception v0

    .line 1675
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :catchall_13a
    move-exception v0

    .line 1591
    :try_start_13b
    monitor-exit v6
    :try_end_13c
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13a

    throw v0
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    .line 4789
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4790
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4791
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 4797
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "userId"

    .line 4799
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mOriginalInstallerUid"

    .line 4800
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mOriginalInstallerPackageName"

    .line 4801
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "installerPackageName"

    .line 4802
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "installInitiatingPackageName"

    .line 4803
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "installOriginatingPackageName"

    .line 4804
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mInstallerUid"

    .line 4805
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "createdMillis"

    .line 4806
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "updatedMillis"

    .line 4807
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "committedMillis"

    .line 4808
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "stageDir"

    .line 4809
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "stageCid"

    .line 4810
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4811
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4813
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageInstaller$SessionParams;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 4817
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4818
    :try_start_a5
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 4819
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 4820
    monitor-exit v0
    :try_end_aa
    .catchall {:try_start_a5 .. :try_end_aa} :catchall_19b

    const-string/jumbo v0, "mClientProgress"

    .line 4821
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mProgress"

    .line 4822
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mCommitted"

    .line 4823
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mSealed"

    .line 4824
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mPermissionsManuallyAccepted"

    .line 4825
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mStageDirInUse"

    .line 4826
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mDestroyed"

    .line 4827
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mFds"

    .line 4828
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mBridges"

    .line 4829
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mBridges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mFinalStatus"

    .line 4830
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mFinalMessage"

    .line 4831
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mFinalMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "params.isMultiPackage"

    .line 4832
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "params.isStaged"

    .line 4833
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mParentSessionId"

    .line 4834
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mChildSessionIds"

    .line 4835
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mSessionApplied"

    .line 4836
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mSessionFailed"

    .line 4837
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mSessionReady"

    .line 4838
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mSessionErrorCode"

    .line 4839
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v0, "mSessionErrorMessage"

    .line 4840
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 4841
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 4843
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_19b
    move-exception p0

    .line 4820
    :try_start_19c
    monitor-exit v0
    :try_end_19d
    .catchall {:try_start_19c .. :try_end_19d} :catchall_19b

    throw p0
.end method

.method public final extractNativeLibraries(Landroid/content/pm/parsing/PackageLite;Ljava/io/File;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3959
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3960
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "lib"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-nez p4, :cond_11

    .line 3963
    invoke-static {v0, p2}, Lcom/android/internal/content/NativeLibraryHelper;->removeNativeBinariesFromDirLI(Ljava/io/File;Z)V

    :cond_11
    const/4 p4, 0x0

    .line 3968
    :try_start_12
    invoke-static {p1}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Landroid/content/pm/parsing/PackageLite;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object p4

    .line 3970
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result p0

    .line 3969
    invoke-static {p4, v0, p3, p0}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1e} :catch_3d
    .catchall {:try_start_12 .. :try_end_1e} :catchall_3b

    if-ne p0, p2, :cond_24

    .line 3979
    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    .line 3972
    :cond_24
    :try_start_24
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to extract native libraries, res="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_3b} :catch_3d
    .catchall {:try_start_24 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    goto :goto_48

    :catch_3d
    move-exception p0

    .line 3976
    :try_start_3e
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x6e

    const-string p3, "Failed to extract native libraries"

    invoke-direct {p1, p2, p3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_3b

    .line 3979
    :goto_48
    invoke-static {p4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3980
    throw p0
.end method

.method public final finalizeAndFixContainer(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3985
    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->finalizeSdDir(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, -0x12

    if-eqz v0, :cond_29

    .line 3990
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->defaultContainerGid:I

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->fixSdPermissions(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    return-void

    .line 3991
    :cond_12
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to fix permissions on container "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3986
    :cond_29
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to finalize container "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public generateInfoForCaller(ZI)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3

    .line 1086
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstallerSession;->shouldScrubData(I)Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 9

    .line 1100
    new-instance v0, Landroid/content/pm/PackageInstaller$SessionInfo;

    invoke-direct {v0}, Landroid/content/pm/PackageInstaller$SessionInfo;-><init>()V

    .line 1102
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1103
    :try_start_8
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgress:F

    .line 1104
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_d6

    .line 1105
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1106
    :try_start_e
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sessionId:I

    .line 1107
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iput v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->userId:I

    .line 1108
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v4, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iput-object v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerPackageName:Ljava/lang/String;

    .line 1109
    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerAttributionTag:Ljava/lang/String;

    .line 1110
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-eqz v1, :cond_29

    .line 1111
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    iput-object v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->resolvedBaseCodePath:Ljava/lang/String;

    .line 1112
    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->progress:F

    .line 1113
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sealed:Z

    .line 1114
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isCommitted:Z

    .line 1115
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-lez v1, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    iput-boolean v1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->active:Z

    .line 1117
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->mode:I

    .line 1118
    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installReason:I

    .line 1119
    iget v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installScenario:I

    .line 1120
    iget-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    iput-wide v4, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->sizeBytes:J

    .line 1121
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_5e

    goto :goto_60

    :cond_5e
    iget-object v2, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    :goto_60
    iput-object v2, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appPackageName:Ljava/lang/String;

    if-eqz p1, :cond_68

    .line 1123
    iget-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appIcon:Landroid/graphics/Bitmap;

    .line 1125
    :cond_68
    iget-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->appLabel:Ljava/lang/CharSequence;

    .line 1127
    iget p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installLocation:I

    if-nez p2, :cond_76

    .line 1129
    iget-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUri:Landroid/net/Uri;

    .line 1131
    :cond_76
    iget p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->originatingUid:I

    if-nez p2, :cond_80

    .line 1133
    iget-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->referrerUri:Landroid/net/Uri;

    .line 1135
    :cond_80
    iget-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->grantedRuntimePermissions:[Ljava/lang/String;

    .line 1136
    iget-object p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->whitelistedRestrictedPermissions:Ljava/util/List;

    .line 1137
    iget p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->autoRevokePermissionsMode:I

    .line 1138
    iget p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installFlags:I

    .line 1139
    iget-boolean p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isMultiPackage:Z

    .line 1140
    iget-boolean p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isStaged:Z

    .line 1141
    iget p1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->rollbackDataPolicy:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->rollbackDataPolicy:I

    .line 1142
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->parentSessionId:I

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object p1

    iput-object p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->childSessionIds:[I

    .line 1144
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionApplied:Z

    .line 1145
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionReady:Z

    .line 1146
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    iput-boolean p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->isSessionFailed:Z

    .line 1147
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageInstaller$SessionInfo;->setSessionErrorCode(ILjava/lang/String;)V

    .line 1148
    iget-wide p1, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    iput-wide p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->createdMillis:J

    .line 1149
    iget-wide p1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    iput-wide p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->updatedMillis:J

    .line 1150
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p1, p1, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->requireUserAction:I

    .line 1151
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iput p1, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->installerUid:I

    .line 1152
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput p0, v0, Landroid/content/pm/PackageInstaller$SessionInfo;->packageSource:I

    .line 1153
    monitor-exit v3

    return-object v0

    :catchall_d3
    move-exception p0

    monitor-exit v3
    :try_end_d5
    .catchall {:try_start_e .. :try_end_d5} :catchall_d3

    throw p0

    :catchall_d6
    move-exception p0

    .line 1104
    :try_start_d7
    monitor-exit v1
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d6

    throw p0
.end method

.method public generateInfoScrubbed(Z)Landroid/content/pm/PackageInstaller$SessionInfo;
    .registers 3

    const/4 v0, 0x1

    .line 1096
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->generateInfoInternal(ZZ)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p0

    return-object p0
.end method

.method public final getAddedApksLocked()Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1374
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    .line 1375
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->sAddedApkFilter:Ljava/io/FileFilter;

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final getApksSize(Ljava/lang/String;)J
    .registers 7

    .line 3013
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 3014
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object p0

    const-wide/16 v0, 0x0

    if-nez p0, :cond_11

    return-wide v0

    .line 3018
    :cond_11
    invoke-interface {p0}, Lcom/android/server/pm/pkg/PackageState;->getPath()Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_18

    return-wide v0

    .line 3022
    :cond_18
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    const-string v2, ".apk"

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_33

    .line 3023
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    return-wide p0

    .line 3025
    :cond_33
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_3a

    return-wide v0

    .line 3028
    :cond_3a
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    const/4 p1, 0x0

    .line 3030
    :goto_3f
    array-length v3, p0

    if-ge p1, v3, :cond_5c

    .line 3031
    aget-object v3, p0, p1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 3032
    aget-object v3, p0, p1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    add-long/2addr v0, v3

    :cond_59
    add-int/lit8 p1, p1, 0x1

    goto :goto_3f

    :cond_5c
    return-wide v0
.end method

.method public getChildSessionIds()[I
    .registers 2

    .line 4466
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4467
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 4468
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getChildSessionIdsLocked()[I
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 4453
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 4455
    sget-object p0, Lcom/android/server/pm/PackageInstallerSession;->EMPTY_CHILD_SESSION_ARRAY:[I

    return-object p0

    .line 4457
    :cond_b
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_1b

    .line 4459
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_1b
    return-object v1
.end method

.method public getChildSessions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    .line 2102
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2103
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 2104
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getChildSessionsLocked()Ljava/util/List;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;"
        }
    .end annotation

    .line 2090
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 2091
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 2092
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 2093
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_24

    .line 2095
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    move-object v0, v1

    :cond_25
    return-object v0
.end method

.method public getCommittedMillis()J
    .registers 4

    .line 3842
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3843
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception p0

    .line 3844
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getDataLoader(I)Landroid/content/pm/IDataLoader;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 4438
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoaderManager()Landroid/content/pm/DataLoaderManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/DataLoaderManager;->getDataLoader(I)Landroid/content/pm/IDataLoader;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    .line 4440
    :cond_b
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x14

    const-string v0, "Failure to obtain data loader"

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final getDataLoaderManager()Landroid/content/pm/DataLoaderManager;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 4429
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v0, Landroid/content/pm/DataLoaderManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/DataLoaderManager;

    if-eqz p0, :cond_d

    return-object p0

    .line 4431
    :cond_d
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x14

    const-string v1, "Failed to find data loader manager service"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;
    .registers 4

    .line 4165
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4166
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v2

    :cond_12
    return-object v2
.end method

.method public final getIncrementalFileStorages()Landroid/os/incremental/IncrementalFileStorages;
    .registers 2

    .line 3552
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3553
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3554
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getInstallFlags()I
    .registers 1

    .line 4160
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    return p0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .registers 2

    .line 3856
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3857
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3858
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1354
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/pm/InstallationFile;

    .line 1355
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    .line 1356
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->getIndex()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;->getFile()Landroid/content/pm/InstallationFile;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_e

    :cond_25
    return-object v0
.end method

.method public getInstallerAttributionTag()Ljava/lang/String;
    .registers 1

    .line 3852
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .registers 1

    .line 3848
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getInstallerUid()I
    .registers 2

    .line 3817
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3818
    :try_start_3
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 3819
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getNames()[Ljava/lang/String;
    .registers 3

    .line 1308
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerRootOrVerifier()V

    .line 1309
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    const-string v1, "getNames"

    .line 1310
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1311
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1312
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 1314
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getStageDirContentsLocked()[Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    .line 1316
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final getNamesLocked()[Ljava/lang/String;
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1333
    :try_start_6
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_12

    .line 1335
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_12} :catch_13

    :cond_12
    return-object p0

    :catch_13
    move-exception p0

    .line 1339
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 1344
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object p0

    .line 1345
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1346
    array-length v2, p0

    :goto_22
    if-ge v1, v2, :cond_2f

    .line 1347
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_2f
    return-object v0
.end method

.method public final getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2965
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz p0, :cond_5

    return-object p0

    .line 2969
    :cond_5
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    .line 2971
    invoke-static {p0, p1, p2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 2972
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 2976
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/parsing/PackageLite;

    return-object p0

    .line 2973
    :cond_1a
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x6e

    .line 2974
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getPackageLite()Landroid/content/pm/parsing/PackageLite;
    .registers 2

    .line 3868
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3869
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3870
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 3827
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3828
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3829
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getParentSessionId()I
    .registers 2

    .line 4593
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4594
    :try_start_3
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4595
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getRemoteStatusReceiver()Landroid/content/IntentSender;
    .registers 2

    .line 2479
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2480
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 2481
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getRemovedFilesLocked()Ljava/util/List;
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getNamesLocked()[Ljava/lang/String;

    move-result-object v0

    .line 1381
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    sget-object v1, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    invoke-static {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->filterFiles(Ljava/io/File;[Ljava/lang/String;Ljava/io/FileFilter;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getSessionErrorCode()I
    .registers 2

    .line 4715
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4716
    :try_start_3
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4717
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getSessionErrorMessage()Ljava/lang/String;
    .registers 2

    .line 4722
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4723
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 4724
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .registers 2

    .line 3862
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3863
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 3864
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final getStageDirContentsLocked()[Ljava/lang/String;
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 1321
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    .line 1323
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    :cond_a
    return-object p0
.end method

.method public getUpdatedMillis()J
    .registers 4

    .line 3836
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3837
    :try_start_3
    iget-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    monitor-exit v0

    return-wide v1

    :catchall_7
    move-exception p0

    .line 3838
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final handleInstall()V
    .registers 4

    .line 2423
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->isThemeCenter(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2424
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_22

    .line 2425
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    const/16 v0, -0x6e

    const/4 v1, 0x0

    const-string v2, "Install failed with internal error"

    .line 2426
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    const-string v0, "PackageInstallerSession"

    .line 2428
    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_3b

    const/16 v0, 0x70

    .line 2435
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2436
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyEventLogger;->setAdmin(Ljava/lang/String;)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    .line 2437
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 2446
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sendPendingUserActionIntentIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_42

    return-void

    .line 2450
    :cond_42
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_4e

    .line 2451
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession$StagedSession;->verifySession()V

    goto :goto_51

    .line 2453
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->verify()V

    :goto_51
    return-void
.end method

.method public final handleSessionSealed()V
    .registers 2

    const-string v0, "dispatchSessionSealed"

    .line 1807
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertSealed(Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionSealedBlocking(Lcom/android/server/pm/PackageInstallerSession;)V

    .line 1811
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchStreamValidateAndCommit()V

    return-void
.end method

.method public final handleStreamValidateAndCommit()V
    .registers 5

    const/4 v0, 0x1

    .line 1824
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageInstallerSession;

    .line 1825
    invoke-virtual {v2}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v2

    and-int/2addr v0, v2

    goto :goto_9

    :cond_1b
    if-eqz v0, :cond_41

    .line 1827
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->streamValidateAndCommit()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1828
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_2d
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1 .. :try_end_2d} :catch_2e

    goto :goto_41

    :catch_2e
    move-exception v0

    .line 1831
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroy()V

    .line 1832
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 1833
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1834
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    :cond_41
    :goto_41
    return-void
.end method

.method public hasParentSessionId()Z
    .registers 3

    .line 4586
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4587
    :try_start_3
    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    const/4 v1, -0x1

    if-eq p0, v1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    monitor-exit v0

    return p0

    :catchall_d
    move-exception p0

    .line 4588
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public final hasThemeParkPrefix(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_c

    const-string p0, "com.samsung.themedesigner"

    .line 5348
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public final inheritFileLocked(Ljava/io/File;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3682
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3684
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->maybeInheritFsveritySignatureLocked(Ljava/io/File;)V

    .line 3688
    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 3690
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3691
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->maybeInheritFsveritySignatureLocked(Ljava/io/File;)V

    .line 3694
    :cond_16
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->findDigestsForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 3696
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3698
    invoke-static {p1}, Lcom/android/server/pm/ApkChecksums;->findSignatureForDigests(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2c

    .line 3700
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2c
    return-void
.end method

.method public final install()Ljava/util/concurrent/CompletableFuture;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2742
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->installNonStaged()Ljava/util/List;

    move-result-object v0

    .line 2743
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/concurrent/CompletableFuture;

    .line 2744
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/concurrent/CompletableFuture;

    invoke-static {v1}, Ljava/util/concurrent/CompletableFuture;->allOf([Ljava/util/concurrent/CompletableFuture;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v1

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    return-object p0
.end method

.method public final installNonStaged()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/server/pm/PackageInstallerSession$InstallResult;",
            ">;>;"
        }
    .end annotation

    .line 2769
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2770
    new-instance v1, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v1}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2771
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2772
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->makeInstallParams(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallParams;

    move-result-object v1

    .line 2773
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v2
    :try_end_15
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_15} :catch_81

    const-string v3, "Install failed with internal error"

    const/16 v4, -0x6e

    if-eqz v2, :cond_66

    .line 2774
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v2

    .line 2775
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    .line 2776
    :goto_29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5c

    .line 2777
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v7, :cond_48

    .line 2780
    invoke-virtual {v7}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/pm/PackageInstallerSession;->isIllegalSamsungTheme(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_42

    goto :goto_48

    .line 2781
    :cond_42
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {p0, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2786
    :cond_48
    :goto_48
    new-instance v8, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v8}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 2787
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2788
    invoke-virtual {v7, v8}, Lcom/android/server/pm/PackageInstallerSession;->makeInstallParams(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallParams;

    move-result-object v7

    if-eqz v7, :cond_59

    .line 2790
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_29

    .line 2793
    :cond_5c
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_80

    .line 2794
    invoke-virtual {v1, v5}, Lcom/android/server/pm/InstallParams;->installStage(Ljava/util/List;)V

    goto :goto_80

    :cond_66
    if-eqz v1, :cond_80

    .line 2798
    iget-object v2, v1, Lcom/android/server/pm/InstallParams;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-eqz v2, :cond_7d

    .line 2799
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->isIllegalSamsungTheme(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_77

    goto :goto_7d

    .line 2800
    :cond_77
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {p0, v4, v3}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2805
    :cond_7d
    :goto_7d
    invoke-virtual {v1}, Lcom/android/server/pm/InstallParams;->installStage()V
    :try_end_80
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_1b .. :try_end_80} :catch_81

    :cond_80
    :goto_80
    return-object v0

    :catch_81
    move-exception p0

    .line 2810
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2811
    invoke-static {p0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isApexSession()Z
    .registers 2

    .line 3053
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public isCommitted()Z
    .registers 1

    .line 1171
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p0

    return p0
.end method

.method public final isDataLoaderInstallation()Z
    .registers 1

    .line 821
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result p0

    return p0
.end method

.method public isDestroyed()Z
    .registers 2

    .line 1176
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1178
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isFsVerityRequiredForApk(Ljava/io/File;Ljava/io/File;)Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3628
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 3633
    :cond_6
    new-instance v0, Ljava/io/File;

    .line 3634
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3635
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1b

    const/4 p0, 0x0

    return p0

    .line 3638
    :cond_1b
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    .line 3642
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 3643
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3c

    goto :goto_23

    .line 3647
    :cond_3c
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    goto :goto_23

    .line 3650
    :cond_4b
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p1, -0x76

    const-string p2, "Previously staged apk is missing fs-verity signature"

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_55
    return v1
.end method

.method public final isIllegalSamsungTheme(Ljava/lang/String;)Z
    .registers 7

    .line 5359
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->isThemeCenter(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-interface {v0, p1, v3, v4, v1}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_17

    return v2

    .line 5363
    :cond_17
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 5364
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 5367
    invoke-virtual {v0}, Landroid/content/pm/InstallSourceInfo;->getInstallingPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5368
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->hasThemeParkPrefix(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3d

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->isThemeCenter(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4b

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 5369
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->isThemeCenter(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4b

    :cond_3d
    return v2

    .line 5373
    :cond_3e
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_4b

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->hasThemeParkPrefix(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4b

    return v2

    :cond_4b
    return v1
.end method

.method public final isInTerminalState()Z
    .registers 3

    .line 1182
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1183
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    if-nez v1, :cond_e

    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz p0, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 1184
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final isIncrementalInstallation()Z
    .registers 2

    .line 829
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public final isInstallerDeviceOwnerOrAffiliatedProfileOwner()Z
    .registers 4

    const-string/jumbo v0, "isInstallerDeviceOwnerOrAffiliatedProfileOwner"

    .line 840
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotLocked(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertSealed(Ljava/lang/String;)V

    .line 844
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_15

    return v2

    .line 847
    :cond_15
    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 848
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    if-eqz v0, :cond_2e

    .line 852
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 851
    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManagerInternal;->canSilentlyInstallPackage(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 v2, 0x1

    :cond_2e
    return v2
.end method

.method public isMultiPackage()Z
    .registers 1

    .line 4150
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    return p0
.end method

.method public isPrepared()Z
    .registers 2

    .line 1158
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1159
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1160
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isSealed()Z
    .registers 2

    .line 1164
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1165
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 1166
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isSessionApplied()Z
    .registers 2

    .line 4701
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4702
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4703
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isSessionFailed()Z
    .registers 2

    .line 4708
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4709
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4710
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isSessionReady()Z
    .registers 2

    .line 4694
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4695
    :try_start_3
    iget-boolean p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 4696
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public isStaged()Z
    .registers 1

    .line 4155
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    return p0
.end method

.method public isStagedAndInTerminalState()Z
    .registers 2

    .line 1189
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isInTerminalState()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public final isStreamingInstallation()Z
    .registers 3

    .line 825
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {p0}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p0

    if-ne p0, v1, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public final isSystemDataLoaderInstallation()Z
    .registers 1

    .line 833
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation(Landroid/content/pm/PackageInstaller$SessionParams;)Z

    move-result p0

    return p0
.end method

.method public final isThemeCenter(Ljava/lang/String;)Z
    .registers 2

    const-string p0, "com.samsung.android.themecenter"

    .line 5355
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3903
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getIncrementalFileStorages()Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 3904
    invoke-virtual {v0, p2, p3, p4}, Landroid/os/incremental/IncrementalFileStorages;->makeLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    .line 3908
    :cond_d
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Installer;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_12} :catch_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_12} :catch_13

    return-void

    :catch_13
    move-exception p0

    .line 3910
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed linkOrCreateDir("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final linkFiles(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3917
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 3918
    invoke-static {v1, p4}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 3919
    invoke-virtual {p4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 3920
    invoke-virtual {p3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 3922
    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/pm/PackageInstallerSession;->linkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3925
    :cond_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Linked "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " files into "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageInstallerSession"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logDataLoaderInstallationSession(I)V
    .registers 13

    .line 2992
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2994
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_e

    move-object v4, v0

    goto :goto_11

    :cond_e
    const-string v1, ""

    move-object v4, v1

    .line 2995
    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1a

    const/4 v3, -0x1

    goto :goto_28

    .line 3001
    :cond_1a
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const-wide/16 v5, 0x0

    iget v7, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v3, v0, v5, v6, v7}, Lcom/android/server/pm/Computer;->getPackageUid(Ljava/lang/String;JI)I

    move-result v3

    :goto_28
    move v10, v3

    const/16 v3, 0x107

    .line 3004
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v5

    iget-wide v6, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    sub-long v6, v1, v6

    .line 3008
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->getApksSize(Ljava/lang/String;)J

    move-result-wide v8

    move v2, v3

    move v3, v5

    move-wide v5, v6

    move v7, p1

    .line 3003
    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZLjava/lang/String;JIJI)V

    return-void
.end method

.method public final makeInstallParams(Ljava/util/concurrent/CompletableFuture;)Lcom/android/server/pm/InstallParams;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Lcom/android/server/pm/PackageInstallerSession$InstallResult;",
            ">;)",
            "Lcom/android/server/pm/InstallParams;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2850
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2851
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    const/16 v2, -0x6e

    if-eqz v1, :cond_160

    .line 2855
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->markStageDirInUseLocked()V

    .line 2856
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_168

    .line 2858
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 2860
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_32

    .line 2861
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_32

    .line 2863
    new-instance v0, Lcom/android/server/pm/PackageInstallerSession$InstallResult;

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerSession$InstallResult;-><init>(Lcom/android/server/pm/PackageInstallerSession;Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    return-object v1

    .line 2867
    :cond_32
    :goto_32
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->hasInstallTimeInfo(I)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2868
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v3, "Commit"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->updateInstallTag(ILjava/lang/String;)V

    .line 2869
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-nez v0, :cond_63

    .line 2870
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 2874
    :cond_63
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->abandonInstallTimeInfo(I)V

    .line 2878
    :cond_6a
    new-instance v6, Lcom/android/server/pm/PackageInstallerSession$5;

    invoke-direct {v6, p0, p1}, Lcom/android/server/pm/PackageInstallerSession$5;-><init>(Lcom/android/server/pm/PackageInstallerSession;Ljava/util/concurrent/CompletableFuture;)V

    .line 2897
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v0, 0x7d0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_c5

    .line 2898
    invoke-static {}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isInMaintenanceMode()Z

    move-result p1

    if-eqz p1, :cond_c5

    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 2900
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerService;->getPlatformPackage()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 2899
    invoke-static {p1, v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isPlatformSigned(Landroid/content/pm/SigningDetails;Landroid/content/pm/SigningDetails;)Z

    move-result p1

    if-nez p1, :cond_c5

    .line 2903
    iget p1, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-static {p1, v0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->isRestrictedInstallRequest(II)Z

    move-result p1

    if-nez p1, :cond_ac

    const-string p1, "PackageInstallerSession"

    const-string v0, "It will be installed only on Maintenance mode user"

    .line 2911
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    move p1, v1

    goto :goto_c6

    .line 2905
    :cond_ac
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to install apps on user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_c5
    move p1, v3

    .line 2918
    :goto_c6
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_d2

    .line 2919
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    :goto_d0
    move-object v9, p1

    goto :goto_e4

    :cond_d2
    if-eqz p1, :cond_dc

    .line 2921
    new-instance p1, Landroid/os/UserHandle;

    const/16 v0, 0x4d

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_d0

    .line 2923
    :cond_dc
    new-instance p1, Landroid/os/UserHandle;

    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    goto :goto_d0

    .line 2926
    :goto_e4
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-eqz v0, :cond_f1

    .line 2927
    iget v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    const/high16 v2, 0x200000

    or-int/2addr v0, v2

    iput v0, p1, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    .line 2930
    :cond_f1
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result p1

    if-nez p1, :cond_13c

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result p1

    if-nez p1, :cond_13c

    .line 2931
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2933
    :try_start_100
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    if-nez v0, :cond_121

    const-string v0, "PackageInstallerSession"

    .line 2934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Session: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". Don\'t have a valid PackageLite."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_121
    .catchall {:try_start_100 .. :try_end_121} :catchall_139

    .line 2939
    :cond_121
    :try_start_121
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_12e
    .catchall {:try_start_121 .. :try_end_124} :catchall_139

    .line 2944
    :try_start_124
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    invoke-virtual {p0, v0, v3}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 2946
    monitor-exit p1

    goto :goto_13c

    :catch_12e
    move-exception p0

    .line 2941
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x12

    const-string v2, "Failed to resolve stage location"

    invoke-direct {v0, v1, v2, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catchall_139
    move-exception p0

    .line 2946
    monitor-exit p1
    :try_end_13b
    .catchall {:try_start_124 .. :try_end_13b} :catchall_139

    throw p0

    .line 2949
    :cond_13c
    :goto_13c
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2951
    :try_start_13f
    new-instance v0, Lcom/android/server/pm/InstallParams;

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v8, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v10, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    iget v11, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget-object v12, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v13, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lcom/android/server/pm/InstallParams;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V

    .line 2954
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz p0, :cond_15b

    .line 2955
    iput-boolean v1, v0, Lcom/android/server/pm/InstallParams;->isMoveRequest:Z

    .line 2957
    :cond_15b
    monitor-exit p1

    return-object v0

    :catchall_15d
    move-exception p0

    .line 2959
    monitor-exit p1
    :try_end_15f
    .catchall {:try_start_13f .. :try_end_15f} :catchall_15d

    throw p0

    .line 2852
    :cond_160
    :try_start_160
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string p1, "Session not sealed"

    invoke-direct {p0, v2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_168
    move-exception p0

    .line 2856
    monitor-exit v0
    :try_end_16a
    .catchall {:try_start_160 .. :try_end_16a} :catchall_168

    throw p0
.end method

.method public final markAsSealed(Landroid/content/IntentSender;Z)Z
    .registers 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_d

    .line 1975
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_d

    :cond_b
    move v2, v0

    goto :goto_e

    :cond_d
    :goto_d
    move v2, v1

    :goto_e
    const-string/jumbo v3, "statusReceiver can\'t be null for the root session"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 1977
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1979
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1980
    :try_start_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "commit of session "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    .line 1981
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 1983
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 1984
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "secure_frp_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_44

    move v3, v1

    goto :goto_45

    :cond_44
    move v3, v0

    :goto_45
    if-eqz v3, :cond_5c

    .line 1985
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    .line 1986
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->isSecureFrpInstallAllowed(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_54

    goto :goto_5c

    .line 1987
    :cond_54
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can\'t install packages while in secure FRP"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5c
    :goto_5c
    if-eqz p2, :cond_75

    .line 1991
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_PACKAGES"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq p2, v3, :cond_6d

    goto :goto_7b

    .line 1993
    :cond_6d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Session has not been transferred"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1996
    :cond_75
    iget p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-ne p2, v3, :cond_8b

    .line 2001
    :goto_7b
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->setRemoteStatusReceiver(Landroid/content/IntentSender;)V

    .line 2004
    iget-boolean p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz p1, :cond_84

    .line 2005
    monitor-exit v2
    :try_end_83
    .catchall {:try_start_1a .. :try_end_83} :catchall_93

    return v1

    .line 2009
    :cond_84
    :try_start_84
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V
    :try_end_87
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_84 .. :try_end_87} :catch_89
    .catchall {:try_start_84 .. :try_end_87} :catchall_93

    .line 2013
    :try_start_87
    monitor-exit v2

    return v1

    .line 2011
    :catch_89
    monitor-exit v2

    return v0

    .line 1997
    :cond_8b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Session has been transferred"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_93
    move-exception p0

    .line 2013
    monitor-exit v2
    :try_end_95
    .catchall {:try_start_87 .. :try_end_95} :catchall_93

    throw p0
.end method

.method public final markStageDirInUseLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2582
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v0, :cond_8

    const/4 v0, 0x1

    .line 2588
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    return-void

    .line 2583
    :cond_8
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 v0, -0x6e

    const-string v1, "Session destroyed"

    invoke-direct {p0, v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public markUpdated()V
    .registers 4

    .line 2224
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2225
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    .line 2226
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final mayInheritNativeLibs()Z
    .registers 4

    const-string/jumbo v0, "pi.inherit_native_on_dont_kill"

    const/4 v1, 0x1

    .line 3044
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_17

    iget p0, p0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return v1
.end method

.method public final maybeFinishChildSessions(ILjava/lang/String;)V
    .registers 5

    .line 4080
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    const/4 v1, 0x0

    .line 4081
    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_19
    return-void
.end method

.method public final maybeInheritFsveritySignatureLocked(Ljava/io/File;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 3673
    new-instance v0, Ljava/io/File;

    .line 3674
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3675
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 3676
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    return-void
.end method

.method public final maybeStageDexMetadataLocked(Ljava/io/File;Ljava/io/File;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3523
    invoke-static {p1}, Landroid/content/pm/dex/DexMetadataHelper;->findDexMetadataForFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 3528
    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3534
    :try_start_11
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_2e

    .line 3539
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 3540
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/content/pm/dex/DexMetadataHelper;->buildDexMetadataPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3543
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 3548
    invoke-static {}, Landroid/content/pm/dex/DexMetadataHelper;->isFsVerityRequired()Z

    move-result p2

    .line 3547
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V

    return-void

    :catch_2e
    move-exception p0

    .line 3536
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x12

    const-string v0, "Failed to resolve stage location"

    invoke-direct {p1, p2, v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 3529
    :cond_39
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 p2, -0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid filename: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final maybeStageDigestsLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3570
    iget-object p3, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    if-nez p3, :cond_f

    return-void

    .line 3574
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3576
    invoke-virtual {p3}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getChecksums()[Landroid/content/pm/Checksum;

    move-result-object p1

    .line 3577
    array-length v0, p1

    if-nez v0, :cond_20

    return-void

    .line 3583
    :cond_20
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_b8

    .line 3590
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/pm/ApkChecksums;->buildDigestsPathForApk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3591
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3592
    :try_start_32
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_9d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_32 .. :try_end_37} :catch_81
    .catch Ljava/security/SignatureException; {:try_start_32 .. :try_end_37} :catch_81

    .line 3593
    :try_start_37
    invoke-static {v1, p1}, Lcom/android/server/pm/ApkChecksums;->writeChecksums(Ljava/io/OutputStream;[Landroid/content/pm/Checksum;)V

    .line 3595
    invoke-virtual {p3}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getSignature()[B

    move-result-object p3

    if-eqz p3, :cond_46

    .line 3596
    array-length v2, p3

    if-lez v2, :cond_46

    .line 3597
    invoke-static {p1, p3}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;

    .line 3601
    :cond_46
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    .line 3602
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 3601
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/pm/PackageInstallerSession;->storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 3603
    invoke-virtual {p0, v0, v0}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    if-eqz p3, :cond_73

    .line 3606
    array-length p1, p3

    if-nez p1, :cond_5a

    goto :goto_73

    .line 3610
    :cond_5a
    invoke-static {p2}, Lcom/android/server/pm/ApkChecksums;->buildSignaturePathForDigests(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3612
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3614
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3613
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/pm/PackageInstallerSession;->storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V

    .line 3615
    invoke-virtual {p0, p2, p2}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V
    :try_end_6f
    .catchall {:try_start_37 .. :try_end_6f} :catchall_77

    .line 3616
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    return-void

    :cond_73
    :goto_73
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_76} :catch_9d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6f .. :try_end_76} :catch_81
    .catch Ljava/security/SignatureException; {:try_start_6f .. :try_end_76} :catch_81

    return-void

    :catchall_77
    move-exception p1

    .line 3592
    :try_start_78
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_7c

    goto :goto_80

    :catchall_7c
    move-exception p2

    :try_start_7d
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_80
    throw p1
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_81} :catch_9d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7d .. :try_end_81} :catch_81
    .catch Ljava/security/SignatureException; {:try_start_7d .. :try_end_81} :catch_81

    :catch_81
    move-exception p1

    .line 3620
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    const/16 p3, -0x67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to verify digests\' signature for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_9d
    move-exception p1

    .line 3617
    new-instance p2, Lcom/android/server/pm/PackageManagerException;

    const/4 p3, -0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to store digests for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_b8
    move-exception p0

    .line 3585
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x12

    const-string p3, "Failed to resolve stage location"

    invoke-direct {p1, p2, p3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3508
    new-instance v0, Ljava/io/File;

    .line 3509
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3510
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3511
    new-instance p1, Ljava/io/File;

    .line 3512
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/internal/security/VerityUtils;->getFsveritySignatureFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3513
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    goto :goto_26

    :cond_24
    if-nez p3, :cond_27

    :goto_26
    return-void

    .line 3515
    :cond_27
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x76

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing corresponding fs-verity signature to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public onAfterSessionRead(Landroid/util/SparseArray;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)V"
        }
    .end annotation

    .line 2181
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_3f

    .line 2184
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 2185
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageInstallerSession;

    if-eqz v3, :cond_21

    .line 2187
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_3c

    :cond_21
    const-string v3, "PackageInstallerSession"

    .line 2189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Child session not existed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    :goto_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2194
    :cond_3f
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mShouldBeSealed:Z

    if-eqz v1, :cond_94

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result v1
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_96

    if-eqz v1, :cond_4a

    goto :goto_94

    .line 2198
    :cond_4a
    :try_start_4a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V

    .line 2203
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-nez v1, :cond_88

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_60

    goto :goto_88

    .line 2206
    :cond_60
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v1

    if-eqz v1, :cond_71

    .line 2207
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageInstallerSession;

    goto :goto_72

    :cond_71
    move-object p1, p0

    :goto_72
    if-eqz p1, :cond_92

    .line 2209
    invoke-virtual {p1}, Lcom/android/server/pm/PackageInstallerSession;->isStagedAndInTerminalState()Z

    move-result p1

    if-nez p1, :cond_92

    .line 2210
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result p1

    if-eqz p1, :cond_84

    .line 2211
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_92

    .line 2213
    :cond_84
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;
    :try_end_87
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4a .. :try_end_87} :catch_8a
    .catchall {:try_start_4a .. :try_end_87} :catchall_96

    goto :goto_92

    .line 2204
    :cond_88
    :goto_88
    :try_start_88
    monitor-exit v0

    return-void

    :catch_8a
    move-exception p0

    const-string p1, "PackageInstallerSession"

    const-string v1, "Package not valid"

    .line 2217
    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2219
    :cond_92
    :goto_92
    monitor-exit v0

    return-void

    .line 2195
    :cond_94
    :goto_94
    monitor-exit v0

    return-void

    :catchall_96
    move-exception p0

    .line 2219
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_88 .. :try_end_98} :catchall_96

    throw p0
.end method

.method public final onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;
    .registers 4

    .line 2130
    iget v0, p1, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {p1}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(ILjava/lang/String;)V

    return-object p1
.end method

.method public final onSessionValidationFailure(ILjava/lang/String;)V
    .registers 4

    .line 2136
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    const/4 v0, 0x0

    .line 2138
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onSessionVerificationFailure(ILjava/lang/String;)V
    .registers 5

    .line 2142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to verify session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageInstallerSession"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2144
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 2145
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    return-void
.end method

.method public final onSystemDataLoaderUnrecoverable()V
    .registers 4

    .line 2149
    new-instance v0, Lcom/android/server/pm/DeletePackageHelper;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/pm/DeletePackageHelper;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    .line 2150
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    return-void

    .line 2155
    :cond_12
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;

    invoke-direct {v2, v0, v1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/pm/DeletePackageHelper;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onVerificationComplete()V
    .registers 4

    .line 2833
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isStaged()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2834
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagingManager:Lcom/android/server/pm/StagingManager;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStagedSession:Lcom/android/server/pm/PackageInstallerSession$StagedSession;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->commitSession(Lcom/android/server/pm/StagingManager$StagedSession;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "Session staged"

    .line 2835
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 2838
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->install()Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public open()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4019
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 4020
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionActiveChanged(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4024
    :cond_e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4025
    :try_start_11
    iget-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    if-nez v2, :cond_53

    .line 4027
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v3, :cond_1d

    .line 4028
    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->prepareStageDir(Ljava/io/File;)V

    goto :goto_43

    .line 4029
    :cond_1d
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    if-eqz v3, :cond_24

    goto :goto_43

    .line 4031
    :cond_24
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v3, :cond_4b

    .line 4032
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2c
    .catchall {:try_start_11 .. :try_end_2c} :catchall_5c

    .line 4034
    :try_start_2c
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v6, v6, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    const-wide/32 v8, 0x500000

    add-long/2addr v6, v8

    invoke-static {v5, v6, v7}, Lcom/android/server/pm/PackageInstallerService;->prepareExternalStageCid(Ljava/lang/String;J)V
    :try_end_39
    .catchall {:try_start_2c .. :try_end_39} :catchall_46

    .line 4036
    :try_start_39
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/high16 v3, 0x3e800000    # 0.25f

    .line 4040
    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    .line 4041
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 4046
    :goto_43
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    goto :goto_53

    :catchall_46
    move-exception p0

    .line 4036
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4037
    throw p0

    .line 4043
    :cond_4b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of stageDir or stageCid stage must be set"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4048
    :cond_53
    :goto_53
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_39 .. :try_end_54} :catchall_5c

    if-nez v2, :cond_5b

    .line 4051
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionPrepared(Lcom/android/server/pm/PackageInstallerSession;)V

    :cond_5b
    return-void

    :catchall_5c
    move-exception p0

    .line 4048
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4

    .line 1681
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1685
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1686
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    const-string/jumbo v1, "openRead"

    .line 1687
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_1e

    .line 1689
    :try_start_12
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_18
    .catchall {:try_start_12 .. :try_end_16} :catchall_1e

    :try_start_16
    monitor-exit v0

    return-object p0

    :catch_18
    move-exception p0

    .line 1691
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_1e
    move-exception p0

    .line 1693
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_1e

    throw p0

    .line 1682
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot read regular files in a data loader installation session."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final openReadInternalLocked(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1699
    :try_start_0
    invoke-static {p1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1702
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1703
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    sget p1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p0

    .line 1704
    new-instance p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object p1

    .line 1700
    :cond_20
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_37
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_37} :catch_37

    :catch_37
    move-exception p0

    .line 1706
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final openTargetInternal(Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1561
    invoke-static {p1, p2, p3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p0

    .line 1562
    new-instance p1, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p1, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    return-object p1
.end method

.method public openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;
    .registers 14

    const/4 v0, 0x0

    .line 1513
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 1515
    :try_start_9
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    move-exception p0

    .line 1517
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final parseApkAndExtractNativeLibraries()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2592
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2593
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_be

    .line 2597
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_b6

    .line 2601
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v1, :cond_ae

    .line 2605
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2606
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2607
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    const/16 v2, -0x12

    const/4 v3, 0x0

    if-nez v1, :cond_6a

    .line 2615
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_57

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v4, 0x2

    if-eq v1, v4, :cond_57

    .line 2620
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->calculateInstalledSize()J

    move-result-wide v4

    const-string v1, "PackageInstallerSession"

    .line 2621
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Final Size "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2622
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/server/pm/PackageInstallerSession;->resizeContainerForSd(Ljava/lang/String;J)V
    :try_end_57
    .catchall {:try_start_3 .. :try_end_57} :catchall_c6

    .line 2627
    :cond_57
    :try_start_57
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_61
    .catchall {:try_start_57 .. :try_end_5a} :catchall_c6

    .line 2632
    :try_start_5a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v1

    goto :goto_70

    :catch_61
    move-exception p0

    .line 2629
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Failed to resolve stage location"

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2635
    :cond_6a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/pm/PackageInstallerSession;->getOrParsePackageLiteLocked(Ljava/io/File;I)Landroid/content/pm/parsing/PackageLite;

    move-result-object v1

    :goto_70
    if-eqz v1, :cond_ac

    .line 2638
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 2639
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 2640
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_7d
    .catchall {:try_start_5a .. :try_end_7d} :catchall_c6

    const/high16 v3, 0x3f000000    # 0.5f

    .line 2641
    :try_start_7f
    iput v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInternalProgress:F

    const/4 v3, 0x1

    .line 2642
    invoke-virtual {p0, v3}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 2643
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_7f .. :try_end_86} :catchall_a9

    .line 2646
    :try_start_86
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_a0
    .catchall {:try_start_86 .. :try_end_89} :catchall_c6

    .line 2651
    :try_start_89
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    .line 2652
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v4

    .line 2651
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->extractNativeLibraries(Landroid/content/pm/parsing/PackageLite;Ljava/io/File;Ljava/lang/String;Z)V

    .line 2654
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_ac

    .line 2655
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->finalizeAndFixContainer(Ljava/lang/String;)V

    goto :goto_ac

    :catch_a0
    move-exception p0

    .line 2648
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v3, "Failed to resolve stage location"

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_a9
    .catchall {:try_start_89 .. :try_end_a9} :catchall_c6

    :catchall_a9
    move-exception p0

    .line 2643
    :try_start_aa
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw p0

    .line 2660
    :cond_ac
    :goto_ac
    monitor-exit v0

    return-void

    .line 2602
    :cond_ae
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session not sealed"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2598
    :cond_b6
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session destroyed"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2594
    :cond_be
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session files in use"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_c6
    move-exception p0

    .line 2660
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_ab .. :try_end_c8} :catchall_c6

    throw p0
.end method

.method public final prepareDataLoaderLocked()Z
    .registers 16
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 4232
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 4235
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mDataLoaderFinished:Z

    if-eqz v0, :cond_d

    return v1

    .line 4239
    :cond_d
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4240
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 4242
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object v0

    .line 4243
    array-length v2, v0

    const/4 v12, 0x0

    move v3, v12

    :goto_1e
    if-ge v3, v2, :cond_68

    aget-object v4, v0, v3

    .line 4244
    sget-object v5, Lcom/android/server/pm/PackageInstallerSession;->sAddedFilter:Ljava/io/FileFilter;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 4245
    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getData()Landroid/content/pm/InstallationFileParcel;

    move-result-object v4

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    .line 4248
    :cond_3d
    sget-object v5, Lcom/android/server/pm/PackageInstallerSession;->sRemovedFilter:Ljava/io/FileFilter;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 4249
    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v5

    .line 4250
    invoke-virtual {v4}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x8

    .line 4249
    invoke-virtual {v5, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 4251
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_65
    :goto_65
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 4255
    :cond_68
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 4256
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v2

    xor-int/2addr v1, v2

    .line 4257
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSystemDataLoaderInstallation()Z

    move-result v10

    .line 4258
    new-instance v11, Lcom/android/server/pm/PackageInstallerSession$6;

    move-object v2, v11

    move-object v3, p0

    move v4, v10

    move v5, v1

    move-object v6, v9

    move-object v7, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageInstallerSession$6;-><init>(Lcom/android/server/pm/PackageInstallerSession;ZZLjava/util/List;Landroid/content/pm/DataLoaderParams;Ljava/util/List;)V

    const/16 v13, -0x14

    if-nez v1, :cond_ff

    .line 4351
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 4352
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService;->getPerUidReadTimeouts(Lcom/android/server/pm/Computer;)[Landroid/os/incremental/PerUidReadTimeouts;

    move-result-object v1

    .line 4354
    new-instance v7, Landroid/os/incremental/StorageHealthCheckParams;

    invoke-direct {v7}, Landroid/os/incremental/StorageHealthCheckParams;-><init>()V

    const/16 v2, 0x7d0

    .line 4355
    iput v2, v7, Landroid/os/incremental/StorageHealthCheckParams;->blockedTimeoutMs:I

    const/16 v2, 0x1b58

    .line 4356
    iput v2, v7, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyTimeoutMs:I

    const v2, 0xea60

    .line 4357
    iput v2, v7, Landroid/os/incremental/StorageHealthCheckParams;->unhealthyMonitoringMs:I

    .line 4359
    new-instance v8, Lcom/android/server/pm/PackageInstallerSession$7;

    invoke-direct {v8, p0, v10}, Lcom/android/server/pm/PackageInstallerSession$7;-><init>(Lcom/android/server/pm/PackageInstallerSession;Z)V

    .line 4387
    :try_start_a5
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    const-wide/16 v4, 0x0

    iget v6, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    .line 4388
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_cd

    .line 4390
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_cd

    .line 4391
    new-instance v3, Ljava/io/File;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    goto :goto_ce

    :cond_cd
    const/4 v2, 0x0

    :goto_ce
    move-object v4, v2

    .line 4393
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-nez v2, :cond_e7

    .line 4394
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    new-instance v14, Lcom/android/server/pm/PackageInstallerSession$8;

    invoke-direct {v14, p0}, Lcom/android/server/pm/PackageInstallerSession$8;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    move-object v5, v0

    move-object v6, v11

    move-object v10, v1

    move-object v11, v14

    invoke-static/range {v2 .. v11}, Landroid/os/incremental/IncrementalFileStorages;->initialize(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;Ljava/util/List;[Landroid/os/incremental/PerUidReadTimeouts;Landroid/content/pm/IPackageLoadingProgressCallback;)Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    goto :goto_ef

    :cond_e7
    move-object v3, v0

    move-object v4, v11

    move-object v5, v7

    move-object v6, v8

    move-object v7, v1

    .line 4408
    invoke-virtual/range {v2 .. v7}, Landroid/os/incremental/IncrementalFileStorages;->startLoading(Landroid/content/pm/DataLoaderParams;Landroid/content/pm/IDataLoaderStatusListener;Landroid/os/incremental/StorageHealthCheckParams;Landroid/os/incremental/IStorageHealthListener;[Landroid/os/incremental/PerUidReadTimeouts;)V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ef} :catch_f0

    :goto_ef
    return v12

    :catch_f0
    move-exception p0

    .line 4413
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 4414
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-direct {v0, v13, v1, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4419
    :cond_ff
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getDataLoaderManager()Landroid/content/pm/DataLoaderManager;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0}, Landroid/content/pm/DataLoaderParams;->getData()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-object v7, v11

    invoke-virtual/range {v2 .. v7}, Landroid/content/pm/DataLoaderManager;->bindToDataLoader(ILandroid/content/pm/DataLoaderParamsParcel;JLandroid/content/pm/IDataLoaderStatusListener;)Z

    move-result p0

    if-eqz p0, :cond_113

    return v12

    .line 4421
    :cond_113
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v0, "Failed to initialize data loader"

    invoke-direct {p0, v13, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final prepareInheritedFiles()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2494
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v0

    if-nez v0, :cond_139

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    goto/16 :goto_139

    .line 2497
    :cond_f
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2498
    :try_start_12
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mStageDirInUse:Z

    const/16 v2, -0x6e

    if-nez v1, :cond_12e

    .line 2502
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_126

    .line 2506
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    if-eqz v1, :cond_11e

    .line 2512
    sget-boolean v1, Lcom/samsung/android/rune/PMRune;->PM_INSTALL_TO_SDCARD:Z

    if-eqz v1, :cond_47

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_47

    .line 2516
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->calculateInstalledSize()J

    move-result-wide v1

    const-string v3, "PackageInstallerSession"

    .line 2517
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Final Size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->resizeContainerForSd(Ljava/lang/String;J)V
    :try_end_47
    .catchall {:try_start_12 .. :try_end_47} :catchall_136

    .line 2522
    :cond_47
    :try_start_47
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_113
    .catchall {:try_start_47 .. :try_end_4a} :catchall_136

    .line 2532
    :try_start_4a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    .line 2533
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 2534
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageInstallerSession"

    .line 2536
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Inherited files: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2537
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_80

    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    if-eqz v4, :cond_77

    goto :goto_80

    .line 2538
    :cond_77
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "mInheritedFilesBase == null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2541
    :cond_80
    :goto_80
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->isLinkPossible(Ljava/util/List;Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 2542
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9b

    .line 2543
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "oat"

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2544
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-virtual {p0, v3, v5, v4}, Lcom/android/server/pm/PackageInstallerSession;->createOatDirs(Ljava/lang/String;Ljava/util/List;Ljava/io/File;)V

    .line 2547
    :cond_9b
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_fe

    .line 2548
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_fe

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/16 v6, 0x2f

    .line 2550
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ltz v6, :cond_e7

    .line 2551
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-lt v6, v7, :cond_c6

    goto :goto_e7

    .line 2557
    :cond_c6
    invoke-virtual {v5, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 2558
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2559
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_d8

    .line 2560
    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    :cond_d8
    add-int/lit8 v6, v6, 0x1

    .line 2562
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2563
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/internal/content/NativeLibraryHelper;->createNativeLibrarySubdir(Ljava/io/File;)V

    goto :goto_a9

    :cond_e7
    :goto_e7
    const-string v6, "PackageInstallerSession"

    .line 2552
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping native library creation for linking due to invalid path: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a9

    .line 2567
    :cond_fe
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/android/server/pm/PackageInstallerSession;->linkFiles(Ljava/lang/String;Ljava/util/List;Ljava/io/File;Ljava/io/File;)V

    goto :goto_107

    .line 2571
    :cond_104
    invoke-static {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->copyFiles(Ljava/util/List;Ljava/io/File;)V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_107} :catch_109
    .catchall {:try_start_4a .. :try_end_107} :catchall_136

    .line 2577
    :goto_107
    :try_start_107
    monitor-exit v0

    return-void

    :catch_109
    move-exception p0

    .line 2574
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/4 v2, -0x4

    const-string v3, "Failed to inherit existing install"

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_113
    move-exception p0

    .line 2524
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x12

    const-string v3, "Failed to resolve stage location"

    invoke-direct {v1, v2, v3, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2507
    :cond_11e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session not sealed"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2503
    :cond_126
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session destroyed"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 2499
    :cond_12e
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session files in use"

    invoke-direct {p0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_136
    move-exception p0

    .line 2577
    monitor-exit v0
    :try_end_138
    .catchall {:try_start_107 .. :try_end_138} :catchall_136

    throw p0

    :cond_139
    :goto_139
    return-void
.end method

.method public final releaseTransactionLock()V
    .registers 3

    .line 4486
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mTransactionLock:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    return-void
.end method

.method public removeChildSessionId(I)V
    .registers 5

    .line 4548
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4549
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    const-string/jumbo v1, "removeChildSessionId"

    .line 4550
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 4552
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_16

    .line 4555
    monitor-exit v0

    return-void

    .line 4557
    :cond_16
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_3d

    .line 4559
    :try_start_1e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    .line 4560
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->acquireTransactionLock()V

    const/4 v2, -0x1

    .line 4561
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->setParentSessionId(I)V

    .line 4562
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChildSessions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_2d
    .catchall {:try_start_1e .. :try_end_2d} :catchall_35

    .line 4564
    :try_start_2d
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4565
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4567
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p1

    .line 4564
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4565
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->releaseTransactionLock()V

    .line 4566
    throw p1

    :catchall_3d
    move-exception p0

    .line 4567
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2d .. :try_end_3f} :catchall_3d

    throw p0
.end method

.method public removeFile(ILjava/lang/String;)V
    .registers 14

    .line 4205
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-string v1, "com.android.permission.USE_INSTALLER_V2"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4206
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 4210
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 4214
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4215
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    const-string/jumbo v1, "removeFile"

    .line 4216
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V

    .line 4218
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mFiles:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$FileEntry;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    new-instance v10, Landroid/content/pm/InstallationFile;

    .line 4219
    invoke-static {p2}, Lcom/android/server/pm/PackageInstallerSession;->getRemoveMarkerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    move v4, p1

    invoke-direct/range {v3 .. v9}, Landroid/content/pm/InstallationFile;-><init>(ILjava/lang/String;J[B[B)V

    invoke-direct {v1, v2, v10}, Lcom/android/server/pm/PackageInstallerSession$FileEntry;-><init>(ILandroid/content/pm/InstallationFile;)V

    .line 4218
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_46

    .line 4222
    monitor-exit v0

    return-void

    .line 4220
    :cond_46
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File already removed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_5d
    move-exception p0

    .line 4222
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_1b .. :try_end_5f} :catchall_5d

    throw p0

    .line 4211
    :cond_60
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must specify package name to remove a split"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4207
    :cond_68
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot add files to non-data loader installation session."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public removeSplit(Ljava/lang/String;)V
    .registers 4

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isDataLoaderInstallation()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1451
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1455
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1456
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_16
    const-string/jumbo v1, "removeSplit"

    .line 1457
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_27

    .line 1460
    :try_start_1c
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->createRemoveSplitMarkerLocked(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21
    .catchall {:try_start_1c .. :try_end_1f} :catchall_27

    .line 1464
    :try_start_1f
    monitor-exit v0

    return-void

    :catch_21
    move-exception p0

    .line 1462
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catchall_27
    move-exception p0

    .line 1464
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_27

    throw p0

    .line 1452
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must specify package name to remove a split"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1448
    :cond_32
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot remove splits in a data loader installation session."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    .registers 13

    .line 1434
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerRootOrVerifier()V

    .line 1435
    new-instance v1, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iget-object v2, p1, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    .line 1438
    :try_start_10
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->requestFileChecksums(Ljava/io/File;Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_19} :catch_1a

    return-void

    :catch_1a
    move-exception p0

    .line 1441
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final resizeContainerForSd(Ljava/lang/String;J)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 1892
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->allocateSessionIdLockedtemp()Ljava/lang/String;

    move-result-object v0

    .line 1894
    invoke-static {v0, p2, p3}, Lcom/android/server/pm/PackageInstallerService;->prepareExternalStageCid(Ljava/lang/String;J)V

    .line 1897
    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1898
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1899
    invoke-virtual {p3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_5c

    .line 1902
    array-length v1, p2

    move v2, p3

    :goto_19
    if-ge v2, v1, :cond_5c

    aget-object v3, p2, v2

    .line 1903
    invoke-static {v3}, Landroid/content/pm/PackageParser;->isApkFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_35

    invoke-static {v3}, Landroid/content/pm/dex/DexMetadataHelper;->isDexMetadataFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 1904
    invoke-static {v3}, Lcom/android/internal/security/VerityUtils;->isFsveritySignatureFile(Ljava/io/File;)Z

    move-result v4

    if-nez v4, :cond_35

    invoke-static {v3}, Lcom/android/server/pm/ApkChecksums;->isDigestOrDigestSignatureFile(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 1905
    :cond_35
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 1906
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/mnt/asec/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1907
    invoke-virtual {p0, v4, v3}, Lcom/android/server/pm/PackageInstallerSession;->copyFileUsingStream(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1912
    :cond_5c
    invoke-static {p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->destroySdDir(Ljava/lang/String;)Z

    .line 1914
    invoke-static {v0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->isContainerMounted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_69

    const/4 p0, 0x1

    .line 1916
    invoke-static {v0, p0}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->unMountSdDir(Ljava/lang/String;Z)Z

    .line 1919
    :cond_69
    invoke-static {v0, p1}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->renameSdDir(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1920
    invoke-static {}, Lcom/android/server/pm/AsecInstallHelper;->getEncryptKey()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x3e8

    invoke-static {p1, p0, p2, p3}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->mountSdDir(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_75} :catch_76

    return-void

    :catch_76
    move-exception p0

    .line 1924
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1925
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/16 p2, -0x12

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find mounted "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3659
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->stageFileLocked(Ljava/io/File;Ljava/io/File;)V

    .line 3663
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->isFsVerityRequiredForApk(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    .line 3662
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageFsveritySignatureLocked(Ljava/io/File;Ljava/io/File;Z)V

    .line 3665
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageDexMetadataLocked(Ljava/io/File;Ljava/io/File;)V

    .line 3667
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession;->maybeStageDigestsLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public final resolveStageDirLocked()Ljava/io/File;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1237
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    if-nez v0, :cond_40

    .line 1238
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v0, :cond_b

    .line 1239
    iput-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    goto :goto_40

    .line 1241
    :cond_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1243
    :try_start_f
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/core/pm/containerservice/PackageHelperExt;->getSdDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 1245
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_3b

    .line 1250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_40

    .line 1247
    :cond_22
    :try_start_22
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to resolve path to container "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3b
    .catchall {:try_start_22 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p0

    .line 1250
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1251
    throw p0

    .line 1254
    :cond_40
    :goto_40
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    return-object p0
.end method

.method public final sealLocked()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2119
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertNoWriteFileTransfersOpenLocked()V

    .line 2120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sealing of session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotDestroyedLocked(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2121
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z
    :try_end_1d
    .catchall {:try_start_0 .. :try_end_1d} :catchall_1e

    return-void

    :catchall_1e
    move-exception v0

    .line 2125
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionValidationFailure(Lcom/android/server/pm/PackageManagerException;)Lcom/android/server/pm/PackageManagerException;

    move-result-object p0

    throw p0
.end method

.method public final sendPendingUserActionIntent(Landroid/content/IntentSender;)V
    .registers 5

    .line 2820
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.content.pm.action.CONFIRM_INSTALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2821
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getPackageInstallerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2822
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v2, "android.content.pm.extra.SESSION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2824
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/pm/PackageInstallerSession;->sendOnUserActionRequired(Landroid/content/Context;Landroid/content/IntentSender;ILandroid/content/Intent;)V

    const/4 p1, 0x0

    .line 2828
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->closeInternal(Z)V

    return-void
.end method

.method public final sendPendingUserActionIntentIfNeeded()Z
    .registers 3

    const-string v0, "PackageInstallerSession#sendPendingUserActionIntentIfNeeded"

    .line 2316
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertNotChild(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object v0

    .line 2319
    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;

    invoke-direct {v1, v0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda7;-><init>(Landroid/content/IntentSender;)V

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->sessionContains(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public final sendUpdateToRemoteStatusReceiver(ILjava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    .line 4634
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemoteStatusReceiver()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 4639
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 4640
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 4641
    iput-object p2, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 4642
    iput-object p3, v1, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 4643
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 4644
    iput p1, v1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 4645
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_22
    return-void
.end method

.method public sessionContains(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/pm/PackageInstallerSession;",
            ">;)Z"
        }
    .end annotation

    .line 3057
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v0

    if-nez v0, :cond_b

    .line 3058
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 3061
    :cond_b
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3062
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionsLocked()Ljava/util/List;

    move-result-object p0

    .line 3063
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_2d

    .line 3064
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageInstallerSession;

    .line 3065
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_2b
    const/4 p0, 0x0

    return p0

    :catchall_2d
    move-exception p0

    .line 3063
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V
    .registers 7

    .line 1387
    array-length v0, p2

    if-nez v0, :cond_4

    return-void

    .line 1392
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1393
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    goto :goto_1d

    .line 1395
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    .line 1397
    :goto_1d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_86

    .line 1401
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 1402
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 1404
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    .line 1405
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    if-eqz v0, :cond_7e

    if-eqz p3, :cond_54

    .line 1410
    array-length v0, p3

    if-eqz v0, :cond_54

    .line 1412
    :try_start_47
    invoke-static {p2, p3}, Lcom/android/server/pm/ApkChecksums;->verifySignature([Landroid/content/pm/Checksum;[B)[Ljava/security/cert/Certificate;
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_47 .. :try_end_4a} :catch_4b
    .catch Ljava/security/SignatureException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_54

    :catch_4b
    move-exception p0

    .line 1414
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t verify signature"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1418
    :cond_54
    :goto_54
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1419
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_5a
    const-string v1, "addChecksums"

    .line 1420
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotCommittedOrDestroyedLocked(Ljava/lang/String;)V

    .line 1422
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 1426
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    invoke-direct {v1, p2, p3}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;-><init>([Landroid/content/pm/Checksum;[B)V

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    monitor-exit v0

    return-void

    .line 1423
    :cond_73
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Duplicate checksums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_7b
    move-exception p0

    .line 1427
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_5a .. :try_end_7d} :catchall_7b

    throw p0

    .line 1407
    :cond_7e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Can\'t obtain calling installer\'s package."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1398
    :cond_86
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Installer package is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setClientProgress(F)V
    .registers 3

    .line 1268
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    .line 1269
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1270
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->setClientProgressLocked(F)V

    .line 1271
    monitor-exit v0

    return-void

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final setClientProgressLocked(F)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mProgressLock"
        }
    .end annotation

    .line 1261
    iget v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1262
    :goto_a
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 1263
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    return-void
.end method

.method public setParentSessionId(I)V
    .registers 5

    .line 4575
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2e

    .line 4576
    :try_start_6
    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    if-ne v2, v1, :cond_b

    goto :goto_2e

    .line 4578
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The parent of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is alreadyset to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4581
    :cond_2e
    :goto_2e
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    .line 4582
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_6 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public setPermissionsResult(Z)V
    .registers 4

    .line 3998
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 4002
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->hasParentSessionId()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4003
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getParentSessionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/pm/PackageSessionProvider;->getSession(I)Lcom/android/server/pm/PackageInstallerSession;

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, p0

    :goto_18
    if-eqz p1, :cond_2f

    .line 4007
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v1, 0x1

    .line 4008
    :try_start_1e
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPermissionsManuallyAccepted:Z

    .line 4009
    monitor-exit p1
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2c

    .line 4010
    iget-object p0, v0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3f

    :catchall_2c
    move-exception p0

    .line 4009
    :try_start_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0

    .line 4012
    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/pm/PackageInstallerSession;->destroy()V

    const-string p0, "User rejected permissions"

    const/4 p1, 0x0

    const/16 v1, -0x73

    .line 4013
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    const-string p0, "User rejected permissions"

    .line 4014
    invoke-virtual {v0, v1, p0}, Lcom/android/server/pm/PackageInstallerSession;->maybeFinishChildSessions(ILjava/lang/String;)V

    :goto_3f
    return-void

    .line 3999
    :cond_40
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must be sealed to accept permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setRemoteStatusReceiver(Landroid/content/IntentSender;)V
    .registers 3

    .line 2485
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2486
    :try_start_3
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mRemoteStatusReceiver:Landroid/content/IntentSender;

    .line 2487
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final setSessionApplied()V
    .registers 5

    .line 4678
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4680
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_41

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz v1, :cond_c

    goto :goto_41

    :cond_c
    const/4 v1, 0x0

    .line 4681
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    const/4 v2, 0x1

    .line 4682
    iput-boolean v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 4683
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 4684
    iput v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    const-string v1, ""

    .line 4685
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    const-string v1, "PackageInstallerSession"

    .line 4686
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Marking session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " as applied"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_43

    .line 4688
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroy()V

    .line 4689
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void

    .line 4680
    :cond_41
    :goto_41
    :try_start_41
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    .line 4687
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public setSessionFailed(ILjava/lang/String;)V
    .registers 6

    .line 4663
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4665
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_42

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz v1, :cond_c

    goto :goto_42

    :cond_c
    const/4 v1, 0x0

    .line 4666
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    .line 4667
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    const/4 v1, 0x1

    .line 4668
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 4669
    iput p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    .line 4670
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    const-string p1, "PackageInstallerSession"

    .line 4671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marking session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " as failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_44

    .line 4673
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroy()V

    .line 4674
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void

    .line 4665
    :cond_42
    :goto_42
    :try_start_42
    monitor-exit v0

    return-void

    :catchall_44
    move-exception p0

    .line 4672
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_42 .. :try_end_46} :catchall_44

    throw p0
.end method

.method public setSessionReady()V
    .registers 3

    .line 4650
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4652
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-nez v1, :cond_21

    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    if-eqz v1, :cond_c

    goto :goto_21

    :cond_c
    const/4 v1, 0x1

    .line 4653
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    const/4 v1, 0x0

    .line 4654
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    .line 4655
    iput-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    .line 4656
    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    const-string v1, ""

    .line 4657
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    .line 4658
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_23

    .line 4659
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mCallback:Lcom/android/server/pm/PackageInstallerService$InternalCallback;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageInstallerService$InternalCallback;->onSessionChanged(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void

    .line 4652
    :cond_21
    :goto_21
    :try_start_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    .line 4658
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public setUnknownSourceConfirmResult(Z)V
    .registers 5

    const-string v0, "PackageInstallerSession"

    .line 2398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUnknownSourceConfirmResult, sessionid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", accepted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isSealed()Z

    move-result v0

    if-eqz v0, :cond_4a

    if-eqz p1, :cond_3e

    .line 2407
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    .line 2408
    :try_start_2d
    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnknownSourceInstallAccepted:Z

    .line 2409
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 2410
    monitor-exit p1

    goto :goto_49

    :catchall_3b
    move-exception p0

    monitor-exit p1
    :try_end_3d
    .catchall {:try_start_2d .. :try_end_3d} :catchall_3b

    throw p0

    .line 2412
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->destroyInternal()V

    const/16 p1, -0x73

    const-string v0, "User rejected installing unknown source package"

    const/4 v1, 0x0

    .line 2413
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->dispatchSessionFinished(ILjava/lang/String;Landroid/os/Bundle;)V

    :goto_49
    return-void

    .line 2402
    :cond_4a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Must be sealed to accept permissions"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final shouldScrubData(I)Z
    .registers 3

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_c

    .line 1073
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerUid()I

    move-result p0

    if-eq p0, p1, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final stageFileLocked(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3501
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3502
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageInstallerSession;->maybeRenameFile(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public stageViaHardLink(Ljava/lang/String;)V
    .registers 4

    .line 1534
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_53

    .line 1540
    :try_start_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1541
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_1a} :catch_4d

    .line 1543
    :try_start_1a
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/system/Os;->link(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1a4

    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2a
    .catch Landroid/system/ErrnoException; {:try_start_1a .. :try_end_2a} :catch_2b
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2a} :catch_4d

    goto :goto_2f

    :catch_2b
    move-exception p0

    .line 1547
    :try_start_2c
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    .line 1549
    :goto_2f
    invoke-static {v1}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_36

    return-void

    .line 1550
    :cond_36
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t relabel file: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_4d} :catch_4d

    :catch_4d
    move-exception p0

    .line 1553
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 1536
    :cond_53
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "link() can only be run by the system"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startUnknownSourceConfirmDialog(I)V
    .registers 4

    .line 2378
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/pm/PackageInstallerSession;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final storeBytesToInstallationFile(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3559
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getIncrementalFileStorages()Landroid/os/incremental/IncrementalFileStorages;

    move-result-object v0

    .line 3560
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result p0

    if-eqz p0, :cond_11

    if-nez v0, :cond_d

    goto :goto_11

    .line 3563
    :cond_d
    invoke-virtual {v0, p1, p3}, Landroid/os/incremental/IncrementalFileStorages;->makeFile(Ljava/lang/String;[B)V

    goto :goto_14

    .line 3561
    :cond_11
    :goto_11
    invoke-static {p2, p3}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V

    :goto_14
    return-void
.end method

.method public final streamValidateAndCommit()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2030
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_3} :catch_85
    .catchall {:try_start_0 .. :try_end_3} :catchall_7e

    .line 2031
    :try_start_3
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    .line 2032
    monitor-exit v0

    return v2

    .line 2037
    :cond_e
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    const/4 v3, 0x0

    if-nez v1, :cond_2d

    .line 2040
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;

    .line 2043
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareDataLoaderLocked()Z

    move-result v1

    if-nez v1, :cond_20

    .line 2044
    monitor-exit v0

    return v3

    .line 2047
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isApexSession()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2048
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApexInstallLocked()V

    goto :goto_2d

    .line 2050
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;

    .line 2053
    :cond_2d
    :goto_2d
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    const/16 v4, -0x6e

    if-nez v1, :cond_73

    .line 2057
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v1

    if-nez v1, :cond_48

    .line 2058
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mProgressLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_7b

    const/high16 v5, 0x3f800000    # 1.0f

    .line 2060
    :try_start_3e
    iput v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mClientProgress:F

    .line 2061
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->computeProgressLocked(Z)V

    .line 2062
    monitor-exit v1

    goto :goto_48

    :catchall_45
    move-exception p0

    monitor-exit v1
    :try_end_47
    .catchall {:try_start_3e .. :try_end_47} :catchall_45

    :try_start_47
    throw p0

    .line 2067
    :cond_48
    :goto_48
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mActiveCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2069
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 2076
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    .line 2077
    monitor-exit v0

    return v2

    .line 2070
    :cond_5d
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    const-string v5, "The mCommitted of session %d should be false originally"

    new-array v2, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 2074
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    .line 2072
    invoke-static {v5, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v4, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 2054
    :cond_73
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Session destroyed"

    invoke-direct {p0, v4, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :catchall_7b
    move-exception p0

    .line 2077
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_47 .. :try_end_7d} :catchall_7b

    :try_start_7d
    throw p0
    :try_end_7e
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_7d .. :try_end_7e} :catch_85
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7e

    :catchall_7e
    move-exception p0

    .line 2084
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_85
    move-exception p0

    .line 2080
    throw p0
.end method

.method public transfer(Ljava/lang/String;)V
    .registers 6

    .line 2231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 2232
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 2233
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/server/pm/Computer;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_85

    const-string v2, "android.permission.INSTALL_PACKAGES"

    .line 2238
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-interface {v0, v2, v3}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5f

    .line 2246
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {v0}, Landroid/content/pm/PackageInstaller$SessionParams;->areHiddenOptionsSet()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2250
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2251
    :try_start_2e
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->assertCallerIsOwnerOrRoot()V

    const-string/jumbo v2, "transfer"

    .line 2252
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertPreparedAndNotSealedLocked(Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_54

    .line 2255
    :try_start_37
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->sealLocked()V
    :try_end_3a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_37 .. :try_end_3a} :catch_4b
    .catchall {:try_start_37 .. :try_end_3a} :catchall_54

    .line 2260
    :try_start_3a
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    .line 2261
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    const/4 v2, 0x0

    invoke-static {p1, v2, p1, v2, v1}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/server/pm/InstallSource;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 2263
    monitor-exit v0

    return-void

    :catch_4b
    move-exception p0

    .line 2257
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Package is not valid"

    invoke-direct {p1, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catchall_54
    move-exception p0

    .line 2263
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_3a .. :try_end_56} :catchall_54

    throw p0

    .line 2247
    :cond_57
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only transfer sessions that use public options"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2240
    :cond_5f
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destination package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not have the "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " permission"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2235
    :cond_85
    new-instance p0, Landroid/os/ParcelableException;

    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {v0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3736
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object p0

    const/4 v0, 0x1

    .line 3738
    invoke-static {p0, p1, v0}, Landroid/util/apk/ApkSignatureVerifier;->unsafeGetCertsWithoutVerification(Landroid/content/pm/parsing/result/ParseInput;Ljava/lang/String;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object p0

    .line 3740
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v0

    if-nez v0, :cond_16

    .line 3744
    invoke-interface {p0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/SigningDetails;

    return-object p0

    .line 3741
    :cond_16
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const/4 v0, -0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t obtain signatures from APK : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public final validateApexInstallLocked()V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 3085
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v0

    .line 3086
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x2

    if-nez v1, :cond_b4

    .line 3092
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-gt v1, v3, :cond_ac

    .line 3097
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 3100
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".apex"

    .line 3101
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_35

    .line 3103
    :cond_26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3104
    :goto_35
    invoke-static {v1}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 3109
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3110
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 3111
    iput-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 3114
    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 3115
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v0

    .line 3116
    invoke-virtual {v0}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    const/16 v2, 0x20

    invoke-static {v0, v1, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 3118
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v1

    if-nez v1, :cond_83

    .line 3122
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/ApkLite;

    .line 3124
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_76

    .line 3125
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 3126
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 3129
    :cond_76
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 3130
    invoke-virtual {v0}, Landroid/content/pm/parsing/ApkLite;->isHasDeviceAdminReceiver()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    return-void

    .line 3119
    :cond_83
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v1

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    .line 3120
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    .line 3105
    :cond_95
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3093
    :cond_ac
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    const-string v0, "Too many files for apex install"

    invoke-direct {p0, v4, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 3087
    :cond_b4
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 3088
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    .line 3089
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v3

    const-string p0, "Session: %d. No packages staged in %s"

    .line 3088
    invoke-static {p0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v4, p0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public final validateApkInstallLocked()Landroid/content/pm/parsing/PackageLite;
    .registers 21
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 3150
    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 3151
    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    const-wide/16 v3, -0x1

    .line 3152
    iput-wide v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 3153
    sget-object v0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 3155
    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 3156
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3157
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3159
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    const-wide/32 v5, 0x4000040

    invoke-interface {v0, v3, v5, v6, v4}, Lcom/android/server/pm/Computer;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 3164
    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 v4, 0x2

    const/4 v5, -0x2

    if-ne v3, v4, :cond_45

    if-eqz v0, :cond_3d

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3d

    goto :goto_45

    .line 3166
    :cond_3d
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Missing existing base package"

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3171
    :cond_45
    :goto_45
    invoke-static {}, Lcom/android/server/pm/PackageManagerServiceUtils;->isApkVerityEnabled()Z

    move-result v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_61

    iget-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    if-ne v3, v4, :cond_61

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3173
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_61

    move v3, v6

    goto :goto_62

    :cond_61
    move v3, v7

    :goto_62
    iput-boolean v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mVerityFoundForApks:Z

    .line 3177
    :try_start_64
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->resolveStageDirLocked()Ljava/io/File;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_611

    .line 3184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getRemovedFilesLocked()Ljava/util/List;

    move-result-object v3

    .line 3185
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3186
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_98

    .line 3187
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_98

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 3188
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    .line 3190
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x8

    .line 3189
    invoke-virtual {v9, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 3191
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7a

    .line 3195
    :cond_98
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getAddedApksLocked()Ljava/util/List;

    move-result-object v3

    .line 3196
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_c7

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-eqz v9, :cond_a9

    goto :goto_c7

    .line 3197
    :cond_a9
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, v1, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    .line 3198
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    .line 3199
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v6

    const-string v1, "Session: %d. No packages staged in %s"

    .line 3198
    invoke-static {v1, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3203
    :cond_c7
    :goto_c7
    new-instance v9, Landroid/util/ArraySet;

    invoke-direct {v9}, Landroid/util/ArraySet;-><init>()V

    .line 3204
    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    .line 3205
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    .line 3206
    new-instance v12, Landroid/util/ArrayMap;

    invoke-direct {v12}, Landroid/util/ArrayMap;-><init>()V

    .line 3207
    invoke-static {}, Landroid/content/pm/parsing/result/ParseTypeImpl;->forDefaultParsing()Landroid/content/pm/parsing/result/ParseTypeImpl;

    move-result-object v13

    .line 3208
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v14, v2

    :goto_e4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    const-string v4, "PackageInstallerSession"

    if-eqz v15, :cond_203

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/io/File;

    .line 3209
    invoke-virtual {v13}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v7

    const/16 v2, 0x20

    invoke-static {v7, v15, v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parseApkLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 3211
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v7

    if-nez v7, :cond_1f1

    .line 3216
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/ApkLite;

    .line 3217
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d0

    .line 3223
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v7, :cond_122

    .line 3224
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 3225
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getLongVersionCode()J

    move-result-wide v6

    iput-wide v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 3227
    :cond_122
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v7, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v6, v7, :cond_12e

    .line 3228
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 3230
    :cond_12e
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->isHasDeviceAdminReceiver()Z

    move-result v6

    iput-boolean v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mHasDeviceAdminReceiver:Z

    .line 3232
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6, v2}, Lcom/android/server/pm/PackageInstallerSession;->assertApkConsistentLocked(Ljava/lang/String;Landroid/content/pm/parsing/ApkLite;)V

    .line 3235
    invoke-static {v2}, Landroid/content/pm/parsing/ApkLiteParseUtils;->splitNameToFileName(Landroid/content/pm/parsing/ApkLite;)Ljava/lang/String;

    move-result-object v6

    .line 3236
    invoke-static {v6}, Landroid/os/FileUtils;->isValidExtFilename(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1b8

    .line 3242
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v7

    const/4 v5, -0x1

    if-eq v7, v5, :cond_180

    .line 3243
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallerPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_180

    .line 3244
    iget-object v7, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v7, v7, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    move-object/from16 v16, v3

    .line 3245
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getInstallLocation()I

    move-result v3

    if-eq v7, v3, :cond_182

    .line 3246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " drops manifest attribute android:installLocation in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_182

    :cond_180
    move-object/from16 v16, v3

    .line 3252
    :cond_182
    :goto_182
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    invoke-direct {v3, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3253
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v15, v3, v4}, Lcom/android/server/pm/PackageInstallerSession;->resolveAndStageFileLocked(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 3256
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_19a

    .line 3257
    iput-object v3, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    move-object v14, v2

    goto :goto_1a1

    .line 3260
    :cond_19a
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3264
    :goto_1a1
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getRequiredSplitTypes()Ljava/util/Set;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 3265
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getSplitTypes()Ljava/util/Set;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    move-object/from16 v3, v16

    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, -0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    goto/16 :goto_e4

    .line 3237
    :cond_1b8
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3218
    :cond_1d0
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Split "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3219
    invoke-virtual {v2}, Landroid/content/pm/parsing/ApkLite;->getSplitName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was defined multiple times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3212
    :cond_1f1
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v1

    .line 3213
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3268
    :cond_203
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_275

    if-eqz v0, :cond_25b

    .line 3275
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3276
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->splitNames:[Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_224

    goto :goto_20f

    .line 3277
    :cond_224
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Split not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3283
    :cond_23c
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_24a

    .line 3284
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    .line 3285
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    .line 3287
    :cond_24a
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    sget-object v3, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    if-ne v2, v3, :cond_275

    .line 3288
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageInstallerSession;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    goto :goto_275

    .line 3270
    :cond_25b
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing existing base package for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3293
    :cond_275
    :goto_275
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v2

    const/16 v3, -0x74

    if-eqz v2, :cond_28e

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallationAllowed(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_286

    goto :goto_28e

    .line 3294
    :cond_286
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Incremental installation of this package is not allowed."

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3299
    :cond_28e
    :goto_28e
    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    iget v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerUid:I

    if-eq v2, v5, :cond_2b1

    .line 3301
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2a7

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mOriginalInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a7

    goto :goto_2b1

    .line 3303
    :cond_2a7
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x17

    const-string v2, "Can only transfer sessions that update the original installer"

    invoke-direct {v0, v1, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3308
    :cond_2b1
    :goto_2b1
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5ee

    .line 3314
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v2, v2, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const-string v3, "Missing split for "

    const/16 v5, -0x1c

    const-string v6, "219044664"

    const v7, 0x534e4554

    const/4 v15, 0x1

    if-ne v2, v15, :cond_343

    const/4 v2, 0x0

    .line 3316
    invoke-virtual {v9, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33a

    .line 3319
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v0, v0, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_2e1

    .line 3320
    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3323
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageInstaller$SessionParams;->setDontKillApp(Z)V

    .line 3325
    :cond_2e1
    invoke-virtual {v14}, Landroid/content/pm/parsing/ApkLite;->isSplitRequired()Z

    move-result v0

    if-eqz v0, :cond_30c

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2f5

    .line 3326
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2f5

    goto :goto_30c

    .line 3327
    :cond_2f5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3333
    :cond_30c
    :goto_30c
    invoke-virtual {v13}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStageDir:Ljava/io/File;

    const/4 v3, 0x1

    invoke-static {v0, v2, v14, v12, v3}, Landroid/content/pm/parsing/ApkLiteParseUtils;->composePackageLiteFromApks(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;Landroid/content/pm/parsing/ApkLite;Landroid/util/ArrayMap;Z)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v0

    .line 3335
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v2

    if-nez v2, :cond_328

    .line 3339
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/parsing/PackageLite;

    iput-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    const/4 v4, 0x1

    goto/16 :goto_55f

    .line 3336
    :cond_328
    new-instance v1, Lcom/android/server/pm/PackageManagerException;

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorCode()I

    move-result v2

    .line 3337
    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 3317
    :cond_33a
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Full install must include a base package"

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3342
    :cond_343
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3344
    invoke-virtual {v13}, Landroid/content/pm/parsing/result/ParseTypeImpl;->reset()Landroid/content/pm/parsing/result/ParseInput;

    move-result-object v2

    new-instance v12, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getCodePath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 3343
    invoke-static {v2, v12, v13}, Landroid/content/pm/parsing/ApkLiteParseUtils;->parsePackageLite(Landroid/content/pm/parsing/result/ParseInput;Ljava/io/File;I)Landroid/content/pm/parsing/result/ParseResult;

    move-result-object v2

    .line 3345
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->isError()Z

    move-result v12

    if-nez v12, :cond_5de

    .line 3349
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/parsing/PackageLite;

    .line 3351
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 3352
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getLongVersionCode()J

    move-result-wide v13

    const-string v15, "Existing"

    .line 3351
    invoke-virtual {v1, v15, v12, v13, v14}, Lcom/android/server/pm/PackageInstallerSession;->assertPackageConsistentLocked(Ljava/lang/String;Ljava/lang/String;J)V

    .line 3354
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getBaseApkPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/android/server/pm/PackageInstallerSession;->unsafeGetCertsWithoutVerification(Ljava/lang/String;)Landroid/content/pm/SigningDetails;

    move-result-object v12

    .line 3355
    iget-object v13, v1, Lcom/android/server/pm/PackageInstallerSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v13, v12}, Landroid/content/pm/SigningDetails;->signaturesMatchExactly(Landroid/content/pm/SigningDetails;)Z

    move-result v12

    if-eqz v12, :cond_5d5

    .line 3361
    iget-object v12, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    if-nez v12, :cond_39a

    .line 3362
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    .line 3363
    invoke-virtual {v1, v6}, Lcom/android/server/pm/PackageInstallerSession;->inheritFileLocked(Ljava/io/File;)V

    .line 3365
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getBaseRequiredSplitTypes()Ljava/util/Set;

    move-result-object v6

    invoke-static {v11, v6}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    goto :goto_3ab

    .line 3366
    :cond_39a
    iget-object v12, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v12, v12, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    and-int/lit16 v12, v12, 0x1000

    if-eqz v12, :cond_3ab

    .line 3367
    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 3370
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageInstaller$SessionParams;->setDontKillApp(Z)V

    .line 3374
    :cond_3ab
    :goto_3ab
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f2

    const/4 v6, 0x0

    .line 3375
    :goto_3b6
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-ge v6, v7, :cond_3f2

    .line 3376
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v6

    .line 3377
    new-instance v12, Ljava/io/File;

    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getSplitApkPaths()[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v6

    invoke-direct {v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3378
    invoke-interface {v8, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 3379
    invoke-virtual {v9, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3ef

    if-nez v13, :cond_3ef

    .line 3380
    invoke-virtual {v1, v12}, Lcom/android/server/pm/PackageInstallerSession;->inheritFileLocked(Ljava/io/File;)V

    .line 3383
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getRequiredSplitTypes()[Ljava/util/Set;

    move-result-object v7

    aget-object v7, v7, v6

    .line 3382
    invoke-static {v11, v7}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    .line 3384
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getSplitTypes()[Ljava/util/Set;

    move-result-object v7

    aget-object v7, v7, v6

    invoke-static {v10, v7}, Lcom/android/internal/util/CollectionUtils;->addAll(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/Set;

    :cond_3ef
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b6

    .line 3390
    :cond_3f2
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 3391
    iput-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mInheritedFilesBase:Ljava/io/File;

    .line 3392
    new-instance v0, Ljava/io/File;

    const-string/jumbo v7, "oat"

    invoke-direct {v0, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3393
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_44e

    .line 3394
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_44e

    .line 3399
    array-length v7, v0

    if-lez v7, :cond_44e

    .line 3400
    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v7

    .line 3401
    array-length v12, v0

    const/4 v13, 0x0

    :goto_41e
    if-ge v13, v12, :cond_44e

    aget-object v14, v0, v13

    .line 3403
    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-static {v7, v15}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_42d

    goto :goto_449

    .line 3407
    :cond_42d
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    if-eqz v15, :cond_449

    .line 3408
    array-length v5, v15

    if-nez v5, :cond_437

    goto :goto_449

    .line 3412
    :cond_437
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInstructionSets:Ljava/util/List;

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3413
    iget-object v5, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_449
    :goto_449
    add-int/lit8 v13, v13, 0x1

    const/16 v5, -0x1c

    goto :goto_41e

    .line 3419
    :cond_44e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->mayInheritNativeLibs()Z

    move-result v0

    if-eqz v0, :cond_50b

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_50b

    const/4 v5, 0x2

    new-array v7, v5, [Ljava/io/File;

    .line 3420
    new-instance v0, Ljava/io/File;

    const-string/jumbo v12, "lib"

    invoke-direct {v0, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v15, 0x0

    aput-object v0, v7, v15

    new-instance v0, Ljava/io/File;

    const-string/jumbo v12, "lib64"

    invoke-direct {v0, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v0, v7, v12

    move v12, v15

    :goto_474
    if-ge v12, v5, :cond_50b

    .line 3423
    aget-object v0, v7, v12

    .line 3424
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_501

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-nez v13, :cond_486

    goto/16 :goto_501

    .line 3427
    :cond_486
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3428
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3429
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v5, v0

    :goto_495
    if-ge v15, v5, :cond_4db

    move/from16 v17, v5

    aget-object v5, v0, v15

    .line 3430
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v18

    if-nez v18, :cond_4a6

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    goto :goto_4c2

    :cond_4a6
    move-object/from16 v18, v0

    .line 3435
    :try_start_4a8
    invoke-static {v5, v6}, Lcom/android/server/pm/PackageInstallerSession;->getRelativePath(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_4ac
    .catch Ljava/io/IOException; {:try_start_4a8 .. :try_end_4ac} :catch_4cb

    .line 3444
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    move-object/from16 v19, v6

    if-eqz v5, :cond_4c2

    .line 3445
    array-length v6, v5

    if-nez v6, :cond_4b8

    goto :goto_4c2

    .line 3449
    :cond_4b8
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3450
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4c2
    :goto_4c2
    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v17

    move-object/from16 v0, v18

    move-object/from16 v6, v19

    goto :goto_495

    :catch_4cb
    move-exception v0

    move-object/from16 v19, v6

    move-object v5, v0

    const-string v0, "Skipping linking of native library directory!"

    .line 3437
    invoke-static {v4, v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3439
    invoke-interface {v13}, Ljava/util/List;->clear()V

    .line 3440
    invoke-interface {v14}, Ljava/util/List;->clear()V

    goto :goto_4dd

    :cond_4db
    move-object/from16 v19, v6

    .line 3452
    :goto_4dd
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4e1
    :goto_4e1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4fb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3453
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4e1

    .line 3454
    iget-object v6, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedNativeLibPaths:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4e1

    .line 3457
    :cond_4fb
    iget-object v0, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedInheritedFiles:Ljava/util/List;

    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_503

    :cond_501
    :goto_501
    move-object/from16 v19, v6

    :goto_503
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v19

    const/4 v5, 0x2

    const/4 v15, 0x0

    goto/16 :goto_474

    .line 3461
    :cond_50b
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->isSplitRequired()Z

    move-result v0

    if-eqz v0, :cond_55d

    .line 3462
    invoke-virtual {v2}, Landroid/content/pm/parsing/PackageLite;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    .line 3463
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v4

    if-ne v0, v4, :cond_521

    const/4 v15, 0x1

    goto :goto_522

    :cond_521
    const/4 v15, 0x0

    .line 3464
    :goto_522
    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_532

    const/4 v5, 0x0

    .line 3465
    invoke-virtual {v9, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_532

    move v0, v4

    goto :goto_533

    :cond_532
    const/4 v0, 0x0

    :goto_533
    if-eqz v15, :cond_53d

    .line 3466
    invoke-virtual {v9}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_544

    if-nez v0, :cond_544

    .line 3467
    :cond_53d
    invoke-virtual {v10, v11}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_544

    goto :goto_55e

    .line 3468
    :cond_544
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x1c

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_55d
    const/4 v4, 0x1

    :goto_55e
    move-object v0, v2

    .line 3473
    :goto_55f
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isUseEmbeddedDex()Z

    move-result v2

    if-eqz v2, :cond_5a8

    .line 3474
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mResolvedStagedFiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_56b
    :goto_56b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 3475
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".apk"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56b

    .line 3476
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/pm/dex/DexManager;->auditUncompressedDexInApk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_58e

    goto :goto_56b

    .line 3477
    :cond_58e
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Some dex are not uncompressed and aligned correctly for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3484
    :cond_5a8
    iget v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    const/16 v3, 0x7d0

    if-ne v2, v3, :cond_5b0

    move v6, v4

    goto :goto_5b1

    :cond_5b0
    const/4 v6, 0x0

    :goto_5b1
    if-eqz v6, :cond_5ce

    .line 3485
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/PackageInstallerSession;->isIncrementalInstallation()Z

    move-result v2

    if-eqz v2, :cond_5ce

    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    if-eqz v2, :cond_5ce

    .line 3486
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isDebuggable()Z

    move-result v2

    if-nez v2, :cond_5ce

    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->isProfileableByShell()Z

    move-result v2

    if-nez v2, :cond_5ce

    .line 3487
    iget-object v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mIncrementalFileStorages:Landroid/os/incremental/IncrementalFileStorages;

    invoke-virtual {v2}, Landroid/os/incremental/IncrementalFileStorages;->disallowReadLogs()V

    .line 3493
    :cond_5ce
    invoke-virtual {v0}, Landroid/content/pm/parsing/PackageLite;->getTargetSdk()I

    move-result v2

    iput v2, v1, Lcom/android/server/pm/PackageInstallerSession;->mValidatedTargetSdk:I

    return-object v0

    .line 3356
    :cond_5d5
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "Existing signatures are inconsistent"

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3346
    :cond_5de
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v1, -0x6e

    .line 3347
    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Landroid/content/pm/parsing/result/ParseResult;->getException()Ljava/lang/Exception;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 3309
    :cond_5ee
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid checksum name(s): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    .line 3311
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v4, ","

    invoke-static {v4, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_611
    move-exception v0

    move-object v1, v0

    .line 3179
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const/16 v2, -0x12

    const-string v3, "Failed to resolve stage location"

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final verify()V
    .registers 4

    .line 2459
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessions()Ljava/util/List;

    move-result-object v0

    .line 2460
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->isMultiPackage()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2461
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageInstallerSession;

    .line 2462
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->prepareInheritedFiles()V

    .line 2463
    invoke-virtual {v1}, Lcom/android/server/pm/PackageInstallerSession;->parseApkAndExtractNativeLibraries()V

    goto :goto_e

    .line 2466
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->prepareInheritedFiles()V

    .line 2467
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->parseApkAndExtractNativeLibraries()V

    .line 2469
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->verifyNonStaged()V
    :try_end_2a
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_2a} :catch_2b

    goto :goto_40

    :catch_2b
    move-exception v0

    .line 2471
    invoke-static {v0}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 2472
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-static {v2, v1}, Landroid/content/pm/PackageManager;->installStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2473
    iget v2, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v2, v1}, Lcom/android/server/pm/PackageInstallerSession;->setSessionFailed(ILjava/lang/String;)V

    .line 2474
    iget v0, v0, Lcom/android/server/pm/PackageManagerException;->error:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageInstallerSession;->onSessionVerificationFailure(ILjava/lang/String;)V

    :goto_40
    return-void
.end method

.method public final verifyNonStaged()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 2666
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_UNKNOWN_SOURCE_ENABLED:Z

    if-eqz v0, :cond_4e

    .line 2669
    iget-boolean v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mUnknownSourceInstallAccepted:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_3f

    const-string v3, "com.sec.android.app.samsungapps"

    .line 2670
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "com.android.vending"

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    .line 2671
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    const-string v0, "com.google.android.packageinstaller"

    .line 2673
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    goto :goto_40

    .line 2677
    :cond_31
    :try_start_31
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Landroid/content/pm/IASKSManager;->isTrustedStore(Ljava/lang/String;)Z

    move-result v0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_3d} :catch_3f

    xor-int/2addr v1, v0

    goto :goto_40

    :catch_3f
    :cond_3f
    move v1, v2

    :goto_40
    if-eqz v1, :cond_4e

    .line 2687
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mResolvedBaseFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->checkUnknownSourcePackage(Ljava/io/File;)I

    move-result v0

    if-eqz v0, :cond_4e

    .line 2689
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->startUnknownSourceConfirmDialog(I)V

    return-void

    .line 2696
    :cond_4e
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->hasInstallTimeInfo(I)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 2697
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerSession;->mPackageName:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mVersionCode:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->updatePackageInfo(ILjava/lang/String;J)V

    .line 2698
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallLogger:Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;

    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    const-string v2, "Verifing"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/pm/install/PackageInstallTimeLogger;->updateInstallTag(ILjava/lang/String;)V

    .line 2701
    :cond_6c
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2702
    :try_start_6f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->markStageDirInUseLocked()V

    .line 2703
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_82

    .line 2704
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionProvider:Lcom/android/server/pm/PackageSessionProvider;

    invoke-interface {v0}, Lcom/android/server/pm/PackageSessionProvider;->getSessionVerifier()Lcom/android/server/pm/PackageSessionVerifier;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerSession;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageSessionVerifier;->verify(Lcom/android/server/pm/PackageInstallerSession;Lcom/android/server/pm/PackageSessionVerifier$Callback;)V

    return-void

    :catchall_82
    move-exception p0

    .line 2703
    :try_start_83
    monitor-exit v0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    throw p0
.end method

.method public write(Landroid/util/TypedXmlSerializer;Ljava/io/File;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4987
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4988
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    if-nez v1, :cond_f

    .line 4989
    monitor-exit v0

    return-void

    :cond_f
    const-string/jumbo v1, "session"

    const/4 v2, 0x0

    .line 4992
    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "sessionId"

    .line 4994
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "userId"

    .line 4995
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->userId:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "installerPackageName"

    .line 4996
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->installerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "installerAttributionTag"

    .line 4998
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->installerAttributionTag:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "installerUid"

    .line 5000
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallerUid:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "installInitiatingPackageName"

    .line 5001
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->initiatingPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "installOriginatingPackageName"

    .line 5003
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->originatingPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "createdMillis"

    .line 5005
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->createdMillis:J

    invoke-interface {p1, v2, v1, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "updatedMillis"

    .line 5006
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->updatedMillis:J

    invoke-interface {p1, v2, v1, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "committedMillis"

    .line 5007
    iget-wide v3, p0, Lcom/android/server/pm/PackageInstallerSession;->committedMillis:J

    invoke-interface {p1, v2, v1, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 5008
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageDir:Ljava/io/File;

    if-eqz v1, :cond_7a

    const-string/jumbo v3, "sessionStageDir"

    .line 5010
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 5009
    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5012
    :cond_7a
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->stageCid:Ljava/lang/String;

    if-eqz v1, :cond_84

    const-string/jumbo v3, "sessionStageCid"

    .line 5013
    invoke-static {p1, v3, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_84
    const-string/jumbo v1, "prepared"

    .line 5015
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mPrepared:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v1, "committed"

    .line 5016
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mCommitted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string v1, "destroyed"

    .line 5017
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mDestroyed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v1, "sealed"

    .line 5018
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSealed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v1, "multiPackage"

    .line 5020
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isMultiPackage:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v1, "stagedSession"

    .line 5021
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-boolean v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->isStaged:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v1, "sessionFlags"

    .line 5023
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sessionFlags:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "isReady"

    .line 5025
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionReady:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v1, "isFailed"

    .line 5026
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionFailed:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v1, "isApplied"

    .line 5027
    iget-boolean v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionApplied:Z

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    const-string/jumbo v1, "packageSource"

    .line 5028
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "errorCode"

    .line 5029
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorCode:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "errorMessage"

    .line 5030
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mSessionErrorMessage:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "parentSessionId"

    .line 5033
    iget v3, p0, Lcom/android/server/pm/PackageInstallerSession;->mParentSessionId:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "mode"

    .line 5034
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "installFlags"

    .line 5035
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "installLocation"

    .line 5036
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installLocation:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "sizeBytes"

    .line 5037
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->sizeBytes:J

    invoke-interface {p1, v2, v1, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "appPackageName"

    .line 5038
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "appLabel"

    .line 5039
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->appLabel:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "originatingUri"

    .line 5040
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v1, "originatingUid"

    .line 5041
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->originatingUid:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "referrerUri"

    .line 5042
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->referrerUri:Landroid/net/Uri;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeUriAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "abiOverride"

    .line 5043
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "volumeUuid"

    .line 5044
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "installRason"

    .line 5045
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v3, v3, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-interface {p1, v2, v1, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 5047
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 v3, 0x0

    if-eqz v1, :cond_17a

    const/4 v1, 0x1

    goto :goto_17b

    :cond_17a
    move v1, v3

    :goto_17b
    const-string/jumbo v4, "isDataLoader"

    .line 5048
    invoke-static {p1, v4, v1}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    if-eqz v1, :cond_1bf

    const-string v1, "dataLoaderType"

    .line 5050
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    invoke-virtual {v4}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result v4

    invoke-interface {p1, v2, v1, v4}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "dataLoaderPackageName"

    .line 5051
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 5052
    invoke-virtual {v4}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 5051
    invoke-static {p1, v1, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "dataLoaderClassName"

    .line 5053
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 5054
    invoke-virtual {v4}, Landroid/content/pm/DataLoaderParams;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 5053
    invoke-static {p1, v1, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v1, "dataLoaderArguments"

    .line 5055
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    .line 5056
    invoke-virtual {v4}, Landroid/content/pm/DataLoaderParams;->getArguments()Ljava/lang/String;

    move-result-object v4

    .line 5055
    invoke-static {p1, v1, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5059
    :cond_1bf
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->grantedRuntimePermissions:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeGrantedRuntimePermissionsLocked(Landroid/util/TypedXmlSerializer;[Ljava/lang/String;)V

    .line 5060
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeWhitelistedRestrictedPermissionsLocked(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V

    .line 5062
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    invoke-static {p1, v1}, Lcom/android/server/pm/PackageInstallerSession;->writeAutoRevokePermissionsMode(Landroid/util/TypedXmlSerializer;I)V

    .line 5065
    iget v1, p0, Lcom/android/server/pm/PackageInstallerSession;->sessionId:I

    invoke-static {v1, p2}, Lcom/android/server/pm/PackageInstallerSession;->buildAppIconFile(ILjava/io/File;)Ljava/io/File;

    move-result-object p2

    .line 5066
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1eb

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1eb

    .line 5067
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    goto/16 :goto_25f

    .line 5068
    :cond_1eb
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v1, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_25f

    .line 5069
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-wide v6, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_25f

    const-string v1, "PackageInstallerSession"

    .line 5070
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Writing changed icon "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_213
    .catchall {:try_start_3 .. :try_end_213} :catchall_359

    .line 5073
    :try_start_213
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_213 .. :try_end_218} :catch_22b
    .catchall {:try_start_213 .. :try_end_218} :catchall_229

    .line 5074
    :try_start_218
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    iget-object v4, v4, Landroid/content/pm/PackageInstaller$SessionParams;->appIcon:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5a

    invoke-virtual {v4, v5, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_223
    .catch Ljava/io/IOException; {:try_start_218 .. :try_end_223} :catch_227
    .catchall {:try_start_218 .. :try_end_223} :catchall_259

    .line 5078
    :goto_223
    :try_start_223
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_226
    .catchall {:try_start_223 .. :try_end_226} :catchall_359

    goto :goto_250

    :catch_227
    move-exception v4

    goto :goto_22d

    :catchall_229
    move-exception p0

    goto :goto_25b

    :catch_22b
    move-exception v4

    move-object v1, v2

    :goto_22d
    :try_start_22d
    const-string v5, "PackageInstallerSession"

    .line 5076
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to write icon "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24f
    .catchall {:try_start_22d .. :try_end_24f} :catchall_259

    goto :goto_223

    .line 5081
    :goto_250
    :try_start_250
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->params:Landroid/content/pm/PackageInstaller$SessionParams;

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, v1, Landroid/content/pm/PackageInstaller$SessionParams;->appIconLastModified:J

    goto :goto_25f

    :catchall_259
    move-exception p0

    move-object v2, v1

    .line 5078
    :goto_25b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 5079
    throw p0

    .line 5083
    :cond_25f
    :goto_25f
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getChildSessionIdsLocked()[I

    move-result-object p2

    .line 5084
    array-length v1, p2

    move v4, v3

    :goto_265
    if-ge v4, v1, :cond_27c

    aget v5, p2, v4

    const-string v6, "childSession"

    .line 5085
    invoke-interface {p1, v2, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "sessionId"

    .line 5086
    invoke-interface {p1, v2, v6, v5}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, "childSession"

    .line 5087
    invoke-interface {p1, v2, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_265

    .line 5090
    :cond_27c
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerSession;->getInstallationFilesLocked()[Landroid/content/pm/InstallationFile;

    move-result-object p2

    .line 5091
    array-length v1, p2

    move v4, v3

    :goto_282
    if-ge v4, v1, :cond_2c7

    aget-object v5, p2, v4

    const-string/jumbo v6, "sessionFile"

    .line 5092
    invoke-interface {p1, v2, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "location"

    .line 5093
    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getLocation()I

    move-result v7

    invoke-interface {p1, v2, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "name"

    .line 5094
    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v6, "lengthBytes"

    .line 5095
    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getLengthBytes()J

    move-result-wide v7

    invoke-interface {p1, v2, v6, v7, v8}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v6, "metadata"

    .line 5096
    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getMetadata()[B

    move-result-object v7

    invoke-static {p1, v6, v7}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string/jumbo v6, "signature"

    .line 5097
    invoke-virtual {v5}, Landroid/content/pm/InstallationFile;->getSignature()[B

    move-result-object v5

    invoke-static {p1, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string/jumbo v5, "sessionFile"

    .line 5098
    invoke-interface {p1, v2, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_282

    .line 5101
    :cond_2c7
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    move v1, v3

    :goto_2ce
    if-ge v1, p2, :cond_314

    .line 5102
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5103
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 5104
    invoke-virtual {v5}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getChecksums()[Landroid/content/pm/Checksum;

    move-result-object v5

    .line 5105
    array-length v6, v5

    move v7, v3

    :goto_2e6
    if-ge v7, v6, :cond_311

    aget-object v8, v5, v7

    const-string/jumbo v9, "sessionChecksum"

    .line 5106
    invoke-interface {p1, v2, v9}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v9, "name"

    .line 5107
    invoke-static {p1, v9, v4}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v9, "checksumKind"

    .line 5108
    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getType()I

    move-result v10

    invoke-interface {p1, v2, v9, v10}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, "checksumValue"

    .line 5109
    invoke-virtual {v8}, Landroid/content/pm/Checksum;->getValue()[B

    move-result-object v8

    invoke-static {p1, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string/jumbo v8, "sessionChecksum"

    .line 5110
    invoke-interface {p1, v2, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2e6

    :cond_311
    add-int/lit8 v1, v1, 0x1

    goto :goto_2ce

    .line 5113
    :cond_314
    iget-object p2, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_31a
    if-ge v3, p2, :cond_351

    .line 5114
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5115
    iget-object v4, p0, Lcom/android/server/pm/PackageInstallerSession;->mChecksums:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;

    .line 5116
    invoke-virtual {v4}, Lcom/android/server/pm/PackageInstallerSession$PerFileChecksum;->getSignature()[B

    move-result-object v4

    if-eqz v4, :cond_34e

    .line 5117
    array-length v5, v4

    if-nez v5, :cond_336

    goto :goto_34e

    :cond_336
    const-string/jumbo v5, "sessionChecksumSignature"

    .line 5120
    invoke-interface {p1, v2, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v5, "name"

    .line 5121
    invoke-static {p1, v5, v1}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "signature"

    .line 5122
    invoke-static {p1, v1, v4}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    const-string/jumbo v1, "sessionChecksumSignature"

    .line 5123
    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_34e
    :goto_34e
    add-int/lit8 v3, v3, 0x1

    goto :goto_31a

    .line 5126
    :cond_351
    monitor-exit v0
    :try_end_352
    .catchall {:try_start_250 .. :try_end_352} :catchall_359

    const-string/jumbo p0, "session"

    .line 5128
    invoke-interface {p1, v2, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    :catchall_359
    move-exception p0

    .line 5126
    :try_start_35a
    monitor-exit v0
    :try_end_35b
    .catchall {:try_start_35a .. :try_end_35b} :catchall_359

    throw p0
.end method

.method public write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .registers 8

    if-eqz p6, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 1524
    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstallerSession;->assertCanWrite(Z)V

    .line 1526
    :try_start_8
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/PackageInstallerSession;->doWriteInternal(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)Landroid/os/ParcelFileDescriptor;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    .line 1528
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
