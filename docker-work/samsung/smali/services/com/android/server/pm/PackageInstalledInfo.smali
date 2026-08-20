.class public final Lcom/android/server/pm/PackageInstalledInfo;
.super Ljava/lang/Object;
.source "PackageInstalledInfo.java"


# instance fields
.field public mFreezer:Lcom/android/server/pm/PackageFreezer;

.field public mInstallerPackageName:Ljava/lang/String;

.field public mLibraryConsumers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;"
        }
    .end annotation
.end field

.field public mName:Ljava/lang/String;

.field public mNewUsers:[I

.field public mOrigPackage:Ljava/lang/String;

.field public mOrigPermission:Ljava/lang/String;

.field public mOrigUsers:[I

.field public mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

.field public mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public mReturnCode:I

.field public mReturnMsg:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    const/4 p1, -0x1

    .line 50
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mUid:I

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mPkg:Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    .line 52
    iput-object p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    return-void
.end method


# virtual methods
.method public setError(ILjava/lang/String;)V
    .registers 3

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnCode(I)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    const-string p0, "PackageManager"

    .line 58
    invoke-static {p0, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .registers 4

    .line 62
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    .line 63
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageInstalledInfo;->setReturnMessage(Ljava/lang/String;)V

    const-string p0, "PackageManager"

    .line 64
    invoke-static {p0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public setReturnCode(I)V
    .registers 2

    .line 68
    iput p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnCode:I

    return-void
.end method

.method public final setReturnMessage(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/server/pm/PackageInstalledInfo;->mReturnMsg:Ljava/lang/String;

    return-void
.end method
